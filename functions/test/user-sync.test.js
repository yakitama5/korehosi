const assert = require('node:assert/strict');
const {createUserSyncHandler, difference} = require('../src/user-sync');

const snapshot = (data) => ({exists: data != null, data: () => data});

function setup() {
  const documents = new Map();
  const operations = [];
  const ref = (path) => ({path});
  const db = {
    collection: (name) => ({
      doc: (id) => ({
        ...ref(`${name}/${id}`),
        collection: (child) => ({
          doc: (childId) => ref(`${name}/${id}/${child}/${childId}`),
        }),
      }),
    }),
    runTransaction: async (callback) => callback({
      get: async (document) => snapshot(documents.get(document.path)),
      set: (document, data) => {
        documents.set(document.path, data);
        operations.push(['set', document.path, data]);
      },
      delete: (document) => {
        documents.delete(document.path);
        operations.push(['delete', document.path]);
      },
    }),
  };
  return {
    documents,
    operations,
    handler: createUserSyncHandler({db, logger: {log: () => {}}}),
  };
}

function event({before, after, time}) {
  return {
    time,
    params: {userId: 'user'},
    data: {before: snapshot(before), after: snapshot(after)},
  };
}

describe('user sync', () => {
  it('computes removed groups', () => {
    assert.deepEqual(difference(['a', 'b'], ['b', 'c']), ['a']);
  });

  it('awaits participant deletion and all current writes on update', async () => {
    const {handler, operations} = setup();
    await handler(event({
      before: {id: 'user', joinGroupIds: ['old', 'kept']},
      after: {id: 'user', joinGroupIds: ['kept', 'new']},
      time: '2026-07-23T00:00:00Z',
    }));
    const participantOperations = operations
      .filter(([, path]) => path.includes('/participants/'))
      .map(([operation, path]) => `${operation}:${path}`);
    assert.deepEqual(new Set(participantOperations), new Set([
      'delete:groups/old/participants/user',
      'set:groups/kept/participants/user',
      'set:groups/new/participants/user',
    ]));
  });

  it('deletes participants from every group when the user is deleted', async () => {
    const {handler, operations} = setup();
    await handler(event({
      before: {id: 'user', joinGroupIds: ['a', 'b']},
      after: null,
      time: '2026-07-23T00:00:00Z',
    }));
    assert.deepEqual(
      operations.filter(([, path]) => path.includes('/participants/')),
      [
        ['delete', 'groups/a/participants/user'],
        ['delete', 'groups/b/participants/user'],
      ],
    );
  });

  it('ignores stale writes after a newer participant projection', async () => {
    const {documents, handler, operations} = setup();
    await handler(event({
      before: null,
      after: {id: 'user', name: 'new', joinGroupIds: ['group']},
      time: '2026-07-23T02:00:00Z',
    }));
    const operationCount = operations.length;

    await handler(event({
      before: null,
      after: {id: 'user', name: 'old', joinGroupIds: ['group']},
      time: '2026-07-23T01:00:00Z',
    }));

    assert.equal(operations.length, operationCount);
    assert.equal(
      documents.get('groups/group/participants/user').name,
      'new',
    );
  });

  it('keeps a newer deletion when an older write arrives later', async () => {
    const {documents, handler} = setup();
    await handler(event({
      before: {id: 'user', joinGroupIds: ['group']},
      after: null,
      time: '2026-07-23T02:00:00Z',
    }));
    await handler(event({
      before: null,
      after: {id: 'user', joinGroupIds: ['group']},
      time: '2026-07-23T01:00:00Z',
    }));

    assert.equal(documents.has('groups/group/participants/user'), false);
  });
});
