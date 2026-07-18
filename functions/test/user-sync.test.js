const assert = require('node:assert/strict');
const {createUserSyncHandler, difference} = require('../src/user-sync');

const snapshot = (data) => ({exists: data != null, data: () => data});

function setup() {
  const operations = [];
  const db = {
    collection: () => ({
      doc: (groupId) => ({
        collection: () => ({
          doc: (userId) => ({
            delete: async () => operations.push(`delete:${groupId}:${userId}`),
            set: async () => operations.push(`set:${groupId}:${userId}`),
          }),
        }),
      }),
    }),
  };
  return {
    operations,
    handler: createUserSyncHandler({db, logger: {log: () => {}}}),
  };
}

describe('user sync', () => {
  it('computes removed groups', () => {
    assert.deepEqual(difference(['a', 'b'], ['b', 'c']), ['a']);
  });

  it('awaits participant deletion and all current writes on update', async () => {
    const {handler, operations} = setup();
    await handler({
      params: {userId: 'user'},
      data: {
        before: snapshot({id: 'user', joinGroupIds: ['old', 'kept']}),
        after: snapshot({id: 'user', joinGroupIds: ['kept', 'new']}),
      },
    });
    assert.deepEqual(new Set(operations), new Set([
      'delete:old:user',
      'set:kept:user',
      'set:new:user',
    ]));
  });

  it('deletes participants from every group when the user is deleted', async () => {
    const {handler, operations} = setup();
    await handler({
      params: {userId: 'user'},
      data: {
        before: snapshot({id: 'user', joinGroupIds: ['a', 'b']}),
        after: snapshot(null),
      },
    });
    assert.deepEqual(new Set(operations), new Set([
      'delete:a:user',
      'delete:b:user',
    ]));
  });
});
