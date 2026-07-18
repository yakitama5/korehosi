const assert = require('node:assert/strict');
const {
  buildWishReminderMessage,
  calendarDayDistance,
  deliveryId,
  isReminderDue,
} = require('../src/wish-reminder');

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
