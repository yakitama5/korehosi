const assert = require('node:assert/strict');
const {
  createMessageHandler,
  isInvalidTokenError,
} = require('../src/notifications');

const snapshot = (data) => ({exists: data != null, data: () => data});

function setup(send) {
  let deleted = false;
  const deliveryDocuments = new Map();
  const sentMessages = [];
  const tokenDoc = {
    data: () => ({token: 'token'}),
    ref: {delete: async () => {
      deleted = true;
    }},
  };
  const deliveryRef = (id) => ({
    id,
    get path() {
      return `messageNotificationDeliveries/${id}`;
    },
    set: async (data, options) => {
      const previous = deliveryDocuments.get(id) || {};
      deliveryDocuments.set(id, options && options.merge ?
        {...previous, ...data} : data);
    },
    delete: async () => deliveryDocuments.delete(id),
  });
  const groupRef = {
    get: async () => snapshot({joinUids: ['sender', 'receiver']}),
    collection: () => ({
      doc: (id) => ({
        get: async () => snapshot({id, ageGroup: 'adult'}),
      }),
    }),
  };
  const db = {
    collection: (name) => {
      if (name === 'groups') return {doc: () => groupRef};
      if (name === 'messageNotificationDeliveries') {
        return {doc: deliveryRef};
      }
      return {
        doc: () => ({
          collection: () => ({get: async () => ({docs: [tokenDoc]})}),
        }),
      };
    },
    runTransaction: async (callback) => callback({
      get: async (document) => snapshot(
        deliveryDocuments.get(document.id),
      ),
      set: (document, data) => deliveryDocuments.set(document.id, data),
    }),
  };
  return {
    deleted: () => deleted,
    deliveryDocuments,
    sentMessages,
    handler: createMessageHandler({
      db,
      messaging: {send: async (message) => {
        sentMessages.push(message);
        return send(message);
      }},
      logger: {warn: () => {}, error: () => {}},
      clock: () => new Date('2026-07-23T00:00:00Z'),
    }),
  };
}

const event = {
  params: {groupId: 'group', messageId: 'message'},
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

  it('throws transient failures so Functions retries the event', async () => {
    const sendError = new Error('temporary outage');
    sendError.code = 'messaging/internal-error';
    const {handler, deliveryDocuments} = setup(async () => {
      throw sendError;
    });

    await assert.rejects(handler(event), {
      message: 'Push notification delivery failed',
    });
    assert.equal(deliveryDocuments.size, 0);
  });

  it('does not send again after a completed delivery', async () => {
    const {handler, sentMessages} = setup(async () => 'message-id');

    await handler(event);
    await handler(event);

    assert.equal(sentMessages.length, 1);
  });
});
