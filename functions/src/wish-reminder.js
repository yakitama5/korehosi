/* eslint-disable valid-jsdoc */

const DEFAULT_TIME_ZONE = 'Asia/Tokyo';
const VALID_OFFSETS = new Set([0, 1, 7]);
const INVALID_TOKEN_CODES = new Set([
  'messaging/invalid-registration-token',
  'messaging/registration-token-not-registered',
]);

/** Returns a stable calendar date key in the requested timezone. */
function dateKey(date, timeZone = DEFAULT_TIME_ZONE) {
  const parts = new Intl.DateTimeFormat('en-CA', {
    timeZone,
    year: 'numeric',
    month: '2-digit',
    day: '2-digit',
  }).formatToParts(date);
  const value = Object.fromEntries(parts.map(({type, value}) => [type, value]));
  return `${value.year}-${value.month}-${value.day}`;
}

/** Counts calendar days rather than elapsed 24-hour periods. */
function calendarDayDistance(from, to, timeZone = DEFAULT_TIME_ZONE) {
  const asUtc = (value) => {
    const [year, month, day] = dateKey(value, timeZone).split('-').map(Number);
    return Date.UTC(year, month - 1, day);
  };
  return Math.round((asUtc(to) - asUtc(from)) / 86400000);
}

/** Returns whether a wish date matches a supported reminder offset. */
function isReminderDue({now, wishDate, offsets, timeZone}) {
  const days = calendarDayDistance(now, wishDate, timeZone);
  return offsets.some((offset) => VALID_OFFSETS.has(offset) && offset === days);
}

/** Creates the idempotency key for one reminder delivery. */
function deliveryId({userId, groupId, itemId, offset, wishDate, timeZone}) {
  return [
    dateKey(wishDate, timeZone),
    offset,
    groupId,
    itemId,
    userId,
  ].join('_');
}

/** Builds a privacy-safe FCM payload. */
function buildWishReminderMessage({token, groupId, itemId, itemName, offset}) {
  const timing = offset === 0 ? '今日' : offset === 1 ? '明日' : '1週間後';
  return {
    notification: {
      title: 'ほしい日のリマインダー',
      body: `${timing}は「${itemName}」のほしい日です`,
    },
    data: {
      groupId,
      path: `/items/item/${itemId}`,
      event: 'wishDateReminder',
    },
    android: {
      notification: {
        sound: 'default',
        click_action: 'wishDateReminder',
      },
    },
    apns: {payload: {aps: {badge: 0, sound: 'default'}}},
    token,
  };
}

/** Converts Firestore timestamps and dates to Date. */
function toDate(value) {
  if (value instanceof Date) return value;
  if (value && typeof value.toDate === 'function') return value.toDate();
  return null;
}

/** Claims and sends all device notifications for one recipient. */
async function sendToUser({
  db,
  messaging,
  userId,
  groupId,
  itemId,
  item,
  settings,
  participant,
  now,
  logger,
}) {
  const timeZone = settings.timeZone || DEFAULT_TIME_ZONE;
  const offsets = Array.isArray(settings.offsetDays) ?
    settings.offsetDays : [1];
  const wishDate = toDate(item.wishDate);
  if (!wishDate || !isReminderDue({now, wishDate, offsets, timeZone})) return 0;
  if (settings.audience !== 'all' && participant.ageGroup !== 'adult') {
    return 0;
  }

  const offset = calendarDayDistance(now, wishDate, timeZone);
  const sentRef = db.collection('wishReminderDeliveries').doc(deliveryId({
    userId,
    groupId,
    itemId,
    offset,
    wishDate,
    timeZone,
  }));
  const claimed = await db.runTransaction(async (transaction) => {
    const sent = await transaction.get(sentRef);
    if (sent.exists) return false;
    transaction.create(sentRef, {
      userId,
      groupId,
      itemId,
      offset,
      wishDate: item.wishDate,
      createdAt: new Date(),
    });
    return true;
  });
  if (!claimed) return 0;

  const tokens = await db.collection('users').doc(userId)
    .collection('fcmTokens').get();
  let sentCount = 0;
  for (const tokenDoc of tokens.docs) {
    const token = tokenDoc.data().token;
    if (!token) continue;
    try {
      await messaging.send(buildWishReminderMessage({
        token,
        groupId,
        itemId,
        itemName: item.name,
        offset,
      }));
      sentCount++;
    } catch (err) {
      if (INVALID_TOKEN_CODES.has(err.code)) {
        await tokenDoc.ref.delete();
      } else {
        logger.error('Failed to send wish reminder', err);
      }
    }
  }
  return sentCount;
}

/** Creates the hourly reminder function with injectable dependencies. */
function createWishReminderHandler({
  db,
  messaging,
  logger = console,
  clock = () => new Date(),
}) {
  return async () => {
    const now = clock();
    const items = await db.collectionGroup('items').get();
    let sentCount = 0;
    for (const itemDoc of items.docs) {
      const item = itemDoc.data();
      if (!item.wishDate) continue;
      const groupRef = itemDoc.ref.parent.parent;
      if (!groupRef) continue;
      const group = await groupRef.get();
      if (!group.exists) continue;
      for (const userId of group.data().joinUids || []) {
        const [settingsDoc, participantDoc] = await Promise.all([
          db.collection('users').doc(userId)
            .collection('notificationSettings').doc('wishReminder').get(),
          groupRef.collection('participants').doc(userId).get(),
        ]);
        if (!settingsDoc.exists ||
            !settingsDoc.data().enabled ||
            !participantDoc.exists) {
          continue;
        }
        sentCount += await sendToUser({
          db,
          messaging,
          userId,
          groupId: groupRef.id,
          itemId: itemDoc.id,
          item,
          settings: settingsDoc.data(),
          participant: participantDoc.data(),
          now,
          logger,
        });
      }
    }
    logger.log(`Wish reminder completed: ${sentCount} notifications sent`);
    return sentCount;
  };
}

module.exports = {
  buildWishReminderMessage,
  calendarDayDistance,
  createWishReminderHandler,
  dateKey,
  deliveryId,
  isReminderDue,
};
