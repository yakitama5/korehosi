const assert = require('node:assert/strict');
const {
  buildWishReminderMessage,
  calendarDayDistance,
  createWishReminderHandler,
  deliveryId,
  deviceDeliveryId,
  isReminderDue,
  sendToUser,
  validatedTimeZone,
} = require('../src/wish-reminder');

const snapshot = (data) => ({exists: data != null, data: () => data});

function setupSendToUser(send) {
  const deliveries = new Map();
  const messages = [];
  let tokenDeleted = false;
  let transactionTail = Promise.resolve();
  const tokenDoc = {
    data: () => ({token: 'token'}),
    ref: {delete: async () => {
      tokenDeleted = true;
    }},
  };
  const deliveryRef = (id) => ({
    id,
    set: async (data, options) => {
      const previous = deliveries.get(id) || {};
      deliveries.set(id, options && options.merge ?
        {...previous, ...data} : data);
    },
    delete: async () => deliveries.delete(id),
  });
  const db = {
    collection: (name) => {
      if (name === 'users') {
        return {doc: () => ({
          collection: () => ({get: async () => ({docs: [tokenDoc]})}),
        })};
      }
      return {doc: deliveryRef};
    },
    runTransaction: async (callback) => {
      const previous = transactionTail;
      let release;
      transactionTail = new Promise((resolve) => {
        release = resolve;
      });
      await previous;
      try {
        return await callback({
          get: async (document) => snapshot(deliveries.get(document.id)),
          set: (document, data) => deliveries.set(document.id, data),
        });
      } finally {
        release();
      }
    },
  };
  const invoke = (overrides = {}) => sendToUser({
    db,
    messaging: {send: async (message) => {
      messages.push(message);
      return send(message);
    }},
    userId: 'user',
    groupId: 'group',
    itemId: 'item',
    item: {
      name: '自転車',
      wishDate: new Date('2026-07-24T00:00:00Z'),
    },
    settings: {
      timeZone: 'UTC',
      offsetDays: [1],
      audience: 'all',
    },
    participant: {ageGroup: 'adult'},
    now: new Date('2026-07-23T00:00:00Z'),
    logger: {error: () => {}},
    ...overrides,
  });
  return {
    deliveries,
    invoke,
    messages,
    tokenDeleted: () => tokenDeleted,
  };
}

describe('wish reminder', () => {
  it('matches configured calendar-day offsets in the user timezone', () => {
    const now = new Date('2026-07-19T14:59:00Z');
    const wishDate = new Date('2026-07-20T15:01:00Z');
    assert.equal(calendarDayDistance(now, wishDate, 'Asia/Tokyo'), 2);
    assert.equal(isReminderDue({
      now,
      wishDate,
      offsets: [0, 1, 7],
      timeZone: 'Asia/Tokyo',
    }), false);
  });

  it('accepts only supported reminder offsets', () => {
    const now = new Date('2026-07-19T00:00:00Z');
    const wishDate = new Date('2026-07-21T00:00:00Z');
    assert.equal(isReminderDue({now, wishDate, offsets: [2], timeZone: 'UTC'}), false);
    assert.equal(isReminderDue({now, wishDate, offsets: [7, 1, 0], timeZone: 'UTC'}), false);
  });

  it('uses a deterministic delivery id to prevent duplicate sends', () => {
    const input = {
      userId: 'user',
      groupId: 'group',
      itemId: 'item',
      offset: 1,
      wishDate: new Date('2026-07-20T00:00:00Z'),
      timeZone: 'UTC',
    };
    assert.equal(deliveryId(input), deliveryId(input));
    assert.notEqual(deliveryId(input), deliveryId({...input, offset: 7}));
    assert.equal(
      deviceDeliveryId(deliveryId(input), 'token'),
      deviceDeliveryId(deliveryId(input), 'token'),
    );
    assert.notEqual(
      deviceDeliveryId(deliveryId(input), 'first-token'),
      deviceDeliveryId(deliveryId(input), 'second-token'),
    );
  });

  it('reschedules with a new id when the wish date changes', () => {
    const input = {
      userId: 'user',
      groupId: 'group',
      itemId: 'item',
      offset: 1,
      wishDate: new Date('2026-07-20T00:00:00Z'),
      timeZone: 'UTC',
    };

    assert.notEqual(
      deliveryId(input),
      deliveryId({...input, wishDate: new Date('2026-08-20T00:00:00Z')}),
    );
  });

  it('does not send after an item has been deleted', async () => {
    const messages = [];
    const handler = createWishReminderHandler({
      db: {
        collectionGroup: () => {
          const query = {
            where: () => query,
            orderBy: () => query,
            limit: () => query,
            get: async () => ({docs: []}),
          };
          return query;
        },
      },
      messaging: {send: async (message) => messages.push(message)},
      logger: {log: () => {}, error: () => {}},
    });

    assert.equal(await handler(), 0);
    assert.deepEqual(messages, []);
  });

  it('allows only one concurrent sender to claim a device delivery', async () => {
    const {invoke, messages} = setupSendToUser(async () => 'message-id');

    const counts = await Promise.all([invoke(), invoke()]);

    assert.equal(counts[0] + counts[1], 1);
    assert.equal(messages.length, 1);
  });

  it('retries a transient send failure', async () => {
    let attempts = 0;
    const {deliveries, invoke, messages} = setupSendToUser(async () => {
      attempts++;
      if (attempts === 1) {
        const error = new Error('temporary failure');
        error.code = 'messaging/internal-error';
        throw error;
      }
      return 'message-id';
    });

    assert.equal(await invoke(), 0);
    assert.equal(deliveries.size, 0);
    assert.equal(await invoke(), 1);
    assert.equal(messages.length, 2);
  });

  it('deletes invalid tokens without failing other deliveries', async () => {
    const {invoke, tokenDeleted} = setupSendToUser(async () => {
      const error = new Error('invalid token');
      error.code = 'messaging/registration-token-not-registered';
      throw error;
    });

    assert.equal(await invoke(), 0);
    assert.equal(tokenDeleted(), true);
  });

  it('falls back when persisted timezone data is invalid', async () => {
    assert.equal(validatedTimeZone('Invalid/Zone'), 'Asia/Tokyo');
    const {invoke, messages} = setupSendToUser(async () => 'message-id');

    await invoke({
      settings: {
        timeZone: 'Invalid/Zone',
        offsetDays: [1],
        audience: 'all',
      },
    });

    assert.equal(messages.length, 1);
  });

  it('does not expose purchase or surprise information in the message', () => {
    const message = buildWishReminderMessage({
      token: 'token',
      groupId: 'group',
      itemId: 'item',
      itemName: '自転車',
      offset: 1,
    });
    assert.equal(message.data.path, '/items/item/item');
    assert.equal(JSON.stringify(message).includes('purchase'), false);
    assert.equal(JSON.stringify(message).includes('surprise'), false);
  });
});
