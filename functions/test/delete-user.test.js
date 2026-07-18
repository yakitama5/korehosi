const assert = require('node:assert/strict');
const {createDeleteUserHandler} = require('../src/delete-user');

const snapshot = (data) => ({exists: data != null, data: () => data});

function setup({
  user = {id: 'user', ageGroup: 'child'},
  authError,
  transactionError,
} = {}) {
  const operations = [];
  const refs = {
    'users/user': {path: 'users/user'},
    '_dusers/user': {path: '_dusers/user'},
  };
  const handler = createDeleteUserHandler({
    db: {
      collection: (name) => ({doc: (id) => refs[`${name}/${id}`]}),
      runTransaction: async (callback) => {
        await callback({
          get: async () => snapshot(user),
          set: (ref, data) => operations.push(['set', ref.path, data]),
          delete: (ref) => operations.push(['delete', ref.path]),
        });
        if (transactionError) {
          throw transactionError;
        }
      },
    },
    auth: {
      deleteUser: async (uid) => {
        operations.push(['auth-delete', uid]);
        if (authError) {
          throw authError;
        }
      },
    },
  });
  return {handler, operations};
}

describe('delete user', () => {
  it('rejects an unauthenticated request before accessing data', async () => {
    const {handler, operations} = setup();
    assert.deepEqual(await handler({}), {errorCode: 'not-auth'});
    assert.deepEqual(operations, []);
  });

  it('archives and deletes Firestore data before deleting Auth', async () => {
    const {handler, operations} = setup();
    assert.deepEqual(await handler({auth: {uid: 'user'}}), {});
    assert.deepEqual(operations, [
      ['set', '_dusers/user', {id: 'user', ageGroup: 'child'}],
      ['delete', 'users/user'],
      ['auth-delete', 'user'],
    ]);
  });

  it('still deletes Auth when the Firestore user is already absent', async () => {
    const {handler, operations} = setup({user: null});
    assert.deepEqual(await handler({auth: {uid: 'user'}}), {});
    assert.deepEqual(operations, [['auth-delete', 'user']]);
  });

  it('treats an already deleted Auth user as an idempotent success', async () => {
    const authError = new Error('missing');
    authError.code = 'auth/user-not-found';
    const {handler} = setup({user: null, authError});
    assert.deepEqual(await handler({auth: {uid: 'user'}}), {});
  });

  it('does not delete Auth when the Firestore transaction fails', async () => {
    const transactionError = new Error('commit failed');
    const {handler, operations} = setup({transactionError});
    await assert.rejects(handler({auth: {uid: 'user'}}), transactionError);
    assert.equal(
      operations.some(([operation]) => operation === 'auth-delete'),
      false,
    );
  });
});
