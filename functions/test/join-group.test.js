const assert = require('node:assert/strict');
const {createJoinGroupHandler} = require('../src/join-group');

const snap = (data) => ({exists: data != null, data: () => data});

function setup(overrides = {}) {
  const records = new Map([
    ['shareLinks/invite', snap({
      groupId: 'group',
      createdAt: {toDate: () => new Date('2026-01-01T00:00:00Z')},
      validDays: 30,
    })],
    ['groups/group', snap({joinUids: []})],
    ['users/user', snap({joinGroupIds: []})],
  ]);
  for (const [path, value] of Object.entries(overrides)) {
    records.set(path, snap(value));
  }
  const updates = [];
  const ref = (path) => ({path});
  const db = {
    collection: (collectionName) => ({
      doc: (id) => ({
        ...ref(`${collectionName}/${id}`),
        get: async () => records.get(`${collectionName}/${id}`) || snap(null),
      }),
    }),
    runTransaction: async (callback) => callback({
      get: async (document) => records.get(document.path) || snap(null),
      update: (document, data) => updates.push([document.path, data]),
    }),
  };
  const handler = createJoinGroupHandler({
    db,
    remoteConfig: {
      getTemplate: async () => ({
        parameters: {
          max_group_count_by_free_plan: {defaultValue: {value: '5'}},
        },
      }),
    },
    fieldValue: {arrayUnion: (value) => ({arrayUnion: value})},
    now: () => new Date('2026-01-02T00:00:00Z').getTime(),
  });
  return {handler, updates};
}

const request = (data = {shareLinkId: 'invite'}) => ({
  auth: {uid: 'user'},
  data,
});

describe('join group', () => {
  it('returns not-auth before accessing request data', async () => {
    const {handler} = setup();
    assert.deepEqual(await handler({data: {shareLinkId: 'invite'}}), {
      errorCode: 'not-auth',
    });
  });

  it('rejects invalid input and a missing share link', async () => {
    const {handler} = setup();
    assert.deepEqual(await handler(request({shareLinkId: 1})), {
      errorCode: 'invalid-param',
    });
    assert.deepEqual(await handler(request({shareLinkId: 'missing'})), {
      errorCode: 'invalid-param',
    });
  });

  it('rejects expired links without throwing', async () => {
    const {handler} = setup({'shareLinks/invite': {
      groupId: 'group',
      createdAt: new Date('2025-01-01T00:00:00Z'),
      validDays: 1,
    }});
    assert.deepEqual(await handler(request()), {errorCode: 'invalid-date'});
  });

  it('rejects missing users and groups with stable error codes', async () => {
    const missingUser = setup({'users/user': null});
    assert.deepEqual(await missingUser.handler(request()), {
      errorCode: 'not-auth',
    });
    const missingGroup = setup({'groups/group': null});
    assert.deepEqual(await missingGroup.handler(request()), {
      errorCode: 'invalid-param',
    });
  });

  it('rejects existing membership and plan limit', async () => {
    const joined = setup({'groups/group': {joinUids: ['user']}});
    assert.deepEqual(await joined.handler(request()), {
      errorCode: 'joined-group',
    });
    const overCount = setup({'users/user': {
      joinGroupIds: ['1', '2', '3', '4', '5'],
    }});
    assert.deepEqual(await overCount.handler(request()), {
      errorCode: 'over-count',
    });
  });

  it('returns success only after both transaction writes are queued', async () => {
    const {handler, updates} = setup();
    assert.deepEqual(await handler(request()), {});
    assert.deepEqual(updates, [
      ['groups/group', {joinUids: {arrayUnion: 'user'}}],
      ['users/user', {joinGroupIds: {arrayUnion: 'group'}}],
    ]);
  });
});
