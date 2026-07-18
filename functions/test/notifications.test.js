const assert = require('node:assert/strict');
const {
  createMessageHandler,
  isInvalidTokenError,
} = require('../src/notifications');

const snapshot = (data) => ({exists: data != null, data: () => data});

function setup(send) {
  let deleted = false;
  const tokenDoc = {
    data: () => ({token: 'token'}),
    ref: {delete: async () => {
      deleted = true;
    }},
  };
  const groupRef = {
    get: async () => snapshot({joinUids: ['sender', 'receiver']}),
    collection: () => ({
      doc: (id) => ({
        get: async () => snapshot({id, ageGroup: 'adult'}),
      }),
    }),
  };
  const db = {
    collection: (name) => name === 'groups' ? {
      doc: () => groupRef,
    } : {
      doc: () => ({
        collection: () => ({get: async () => ({docs: [tokenDoc]})}),
      }),
    },
  };
  return {
    deleted: () => deleted,
    handler: createMessageHandler({
      db,
      messaging: {send},
      logger: {warn: () => {}, error: () => {}},
    }),
  };
}

const event = {
  params: {groupId: 'group'},
  data: {data: () => ({
    uid: 'sender',
    target: 'all',
    title: 'title',
    body: 'body',
    path: '/path',
    event: 'event',
  })},
};

describe('message notifications', () => {
  it('recognizes only token-specific permanent failures', () => {
    assert.equal(isInvalidTokenError({
      code: 'messaging/registration-token-not-registered',
    }), true);
    assert.equal(isInvalidTokenError({code: 'messaging/internal-error'}), false);
  });

  it('awaits notification sends', async () => {
    let resolveSend;
    let resolved = false;
    const {handler} = setup(() => new Promise((resolve) => {
      resolveSend = resolve;
    }));
    const result = handler(event).then(() => {
      resolved = true;
    });
    await new Promise((resolve) => setImmediate(resolve));
    assert.equal(resolved, false);
    resolveSend('message-id');
    await result;
    assert.equal(resolved, true);
  });

  it('deletes an invalid FCM token after send rejection', async () => {
    const {handler, deleted} = setup(async () => {
      const sendError = new Error('invalid token');
      sendError.code = 'messaging/registration-token-not-registered';
      throw sendError;
    });
    await handler(event);
    assert.equal(deleted(), true);
  });
});
