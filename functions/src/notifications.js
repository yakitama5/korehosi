const INVALID_TOKEN_CODES = new Set([
  'messaging/invalid-registration-token',
  'messaging/registration-token-not-registered',
]);

/**
 * @param {Error} reason messaging error
 * @return {boolean} whether the token should be removed
 */
function isInvalidTokenError(reason) {
  return reason && INVALID_TOKEN_CODES.has(reason.code);
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
function createMessageHandler({db, messaging, logger}) {
  return async (event) => {
    const groupId = event.params.groupId;
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
          promise: Promise.resolve().then(() => messaging.send(
            notificationPayload(messageData, groupId, token),
          )),
          tokenRef: tokenDoc.ref,
        });
      }
    }

    const results = await Promise.allSettled(sends.map(({promise}) => promise));
    const cleanup = [];
    results.forEach((result, index) => {
      if (result.status === 'fulfilled') {
        return;
      }
      if (isInvalidTokenError(result.reason)) {
        cleanup.push(sends[index].tokenRef.delete());
      } else {
        logger.error('Failed to send push notification:', result.reason);
      }
    });
    await Promise.all(cleanup);
  };
}

module.exports = {
  createMessageHandler,
  isInvalidTokenError,
  notificationPayload,
};
