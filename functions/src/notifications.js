const {createHash} = require('node:crypto');

const INVALID_TOKEN_CODES = new Set([
  'messaging/invalid-registration-token',
  'messaging/registration-token-not-registered',
]);
const CLAIM_TTL_MILLISECONDS = 10 * 60 * 1000;

/**
 * @param {Error} reason messaging error
 * @return {boolean} whether the token should be removed
 */
function isInvalidTokenError(reason) {
  return reason && INVALID_TOKEN_CODES.has(reason.code);
}

/**
 * @param {string} groupId group ID
 * @param {string} messageId message ID
 * @param {string} token FCM token
 * @return {string} privacy-safe delivery document ID
 */
function messageDeliveryId(groupId, messageId, token) {
  return createHash('sha256')
    .update(`${groupId}\0${messageId}\0${token}`)
    .digest('hex');
}

/**
 * @param {Object} messageData message document data
 * @param {string} groupId group ID
 * @param {string} token FCM token
 * @return {Object} Firebase Messaging payload
 */
function notificationPayload(messageData, groupId, token) {
  return {
    notification: {
      title: messageData.title,
      body: messageData.body,
    },
    data: {
      groupId,
      path: messageData.path,
    },
    android: {
      notification: {
        sound: 'default',
        click_action: messageData.event,
      },
    },
    apns: {
      payload: {
        aps: {
          badge: 0,
          sound: 'default',
        },
      },
    },
    token,
  };
}

/**
 * @param {Object} dependencies handler dependencies
 * @return {Function} Firestore event handler
 */
function createMessageHandler({
  db,
  messaging,
  logger,
  clock = () => new Date(),
}) {
  return async (event) => {
    const groupId = event.params.groupId;
    const messageId = event.params.messageId;
    const groupRef = db.collection('groups').doc(groupId);
    const groupSnap = await groupRef.get();
    if (!groupSnap.exists) {
      logger.warn(`Group ${groupId} was not found`);
      return;
    }

    const messageData = event.data.data();
    const joinUids = Array.isArray(groupSnap.data().joinUids) ?
      groupSnap.data().joinUids : [];
    const sends = [];
    for (const userId of joinUids) {
      const userSnap = await groupRef.collection('participants').doc(userId)
        .get();
      if (!userSnap.exists) {
        logger.warn(`Participant ${userId} was not found in ${groupId}`);
        continue;
      }

      const user = userSnap.data();
      const isMyOperation = userId === messageData.uid;
      const isTarget = messageData.target === 'all' ||
        messageData.target === user.ageGroup;
      if (isMyOperation || !isTarget) {
        continue;
      }

      const tokensSnap = await db.collection('users').doc(userId)
        .collection('fcmTokens').get();
      for (const tokenDoc of tokensSnap.docs) {
        const token = tokenDoc.data().token;
        if (typeof token !== 'string' || token.length === 0) {
          continue;
        }
        sends.push({
          token,
          tokenRef: tokenDoc.ref,
        });
      }
    }

    const results = await Promise.allSettled(sends.map(async (send) => {
      const deliveryRef = db.collection('messageNotificationDeliveries').doc(
        messageDeliveryId(groupId, messageId, send.token),
      );
      const claimedAt = clock();
      const claimed = await db.runTransaction(async (transaction) => {
        const delivery = await transaction.get(deliveryRef);
        if (delivery.exists) {
          const data = delivery.data();
          const activeUntil = data.claimExpiresAt &&
            typeof data.claimExpiresAt.toDate === 'function' ?
            data.claimExpiresAt.toDate() : data.claimExpiresAt;
          if (data.status === 'sent' ||
              (data.status === 'pending' && activeUntil instanceof Date &&
                activeUntil > claimedAt)) {
            return false;
          }
        }
        transaction.set(deliveryRef, {
          status: 'pending',
          groupId,
          messageId,
          claimedAt,
          claimExpiresAt: new Date(
            claimedAt.getTime() + CLAIM_TTL_MILLISECONDS,
          ),
        });
        return true;
      });
      if (!claimed) return;

      try {
        await messaging.send(notificationPayload(
          messageData,
          groupId,
          send.token,
        ));
        await deliveryRef.set({status: 'sent', sentAt: clock()}, {merge: true});
      } catch (sendError) {
        if (isInvalidTokenError(sendError)) {
          await Promise.all([
            send.tokenRef.delete(),
            deliveryRef.set(
              {status: 'invalid-token', failedAt: clock()},
              {merge: true},
            ),
          ]);
          return;
        }
        await deliveryRef.delete();
        throw sendError;
      }
    }));
    const failures = results
      .filter(({status}) => status === 'rejected')
      .map(({reason}) => reason);
    if (failures.length > 0) {
      failures.forEach((failure) =>
        logger.error('Failed to send push notification:', failure));
      const deliveryError = new Error('Push notification delivery failed');
      deliveryError.errors = failures;
      throw deliveryError;
    }
  };
}

module.exports = {
  createMessageHandler,
  isInvalidTokenError,
  messageDeliveryId,
  notificationPayload,
};
