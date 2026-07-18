const ERROR_CODE = Object.freeze({
  NOT_AUTH: 'not-auth',
  INVALID_PARAM: 'invalid-param',
  INVALID_DATE: 'invalid-date',
  JOINED_GROUP: 'joined-group',
  OVER_COUNT: 'over-count',
});

const responseError = (errorCode) => ({errorCode});

/**
 * @param {*} value possible Date or Firestore Timestamp
 * @return {Date|null} converted date
 */
function toDate(value) {
  if (value instanceof Date) {
    return value;
  }
  if (value && typeof value.toDate === 'function') {
    return value.toDate();
  }
  return null;
}

/**
 * @param {Object} template Remote Config template
 * @return {number|null} configured group limit
 */
function getMaxGroupCount(template) {
  const value = template && template.parameters &&
    template.parameters.max_group_count_by_free_plan &&
    template.parameters.max_group_count_by_free_plan.defaultValue &&
    template.parameters.max_group_count_by_free_plan.defaultValue.value;
  const count = Number(value);
  return Number.isFinite(count) && count >= 0 ? count : null;
}

/**
 * @param {Object} dependencies handler dependencies
 * @return {Function} callable request handler
 */
function createJoinGroupHandler({
  db,
  remoteConfig,
  fieldValue,
  now = Date.now,
}) {
  return async (request) => {
    const uid = request && request.auth && request.auth.uid;
    if (typeof uid !== 'string' || uid.length === 0) {
      return responseError(ERROR_CODE.NOT_AUTH);
    }

    const shareLinkId = request.data && request.data.shareLinkId;
    if (typeof shareLinkId !== 'string' || shareLinkId.trim().length === 0) {
      return responseError(ERROR_CODE.INVALID_PARAM);
    }

    const linkSnap = await db.collection('shareLinks').doc(shareLinkId).get();
    if (!linkSnap.exists) {
      return responseError(ERROR_CODE.INVALID_PARAM);
    }

    const link = linkSnap.data();
    const createdAt = toDate(link.createdAt);
    const validDays = Number(link.validDays);
    if (!createdAt || !Number.isFinite(validDays) || validDays < 0 ||
      typeof link.groupId !== 'string' || link.groupId.length === 0) {
      return responseError(ERROR_CODE.INVALID_PARAM);
    }

    const expiresAt = new Date(createdAt.getTime());
    expiresAt.setDate(expiresAt.getDate() + validDays);
    if (expiresAt.getTime() <= now()) {
      return responseError(ERROR_CODE.INVALID_DATE);
    }

    const template = await remoteConfig.getTemplate();
    const maxGroupCount = getMaxGroupCount(template);
    if (maxGroupCount == null) {
      throw new Error('Remote Config max_group_count_by_free_plan is invalid');
    }

    const groupRef = db.collection('groups').doc(link.groupId);
    const userRef = db.collection('users').doc(uid);
    return db.runTransaction(async (transaction) => {
      const [groupSnap, userSnap] = await Promise.all([
        transaction.get(groupRef),
        transaction.get(userRef),
      ]);
      if (!userSnap.exists) {
        return responseError(ERROR_CODE.NOT_AUTH);
      }
      if (!groupSnap.exists) {
        return responseError(ERROR_CODE.INVALID_PARAM);
      }

      const joinUids = Array.isArray(groupSnap.data().joinUids) ?
        groupSnap.data().joinUids : [];
      if (joinUids.includes(uid)) {
        return responseError(ERROR_CODE.JOINED_GROUP);
      }

      const joinGroupIds = Array.isArray(userSnap.data().joinGroupIds) ?
        userSnap.data().joinGroupIds : [];
      if (joinGroupIds.length >= maxGroupCount) {
        return responseError(ERROR_CODE.OVER_COUNT);
      }

      transaction.update(groupRef, {
        joinUids: fieldValue.arrayUnion(uid),
      });
      transaction.update(userRef, {
        joinGroupIds: fieldValue.arrayUnion(link.groupId),
      });
      return {};
    });
  };
}

module.exports = {
  ERROR_CODE,
  createJoinGroupHandler,
  getMaxGroupCount,
  toDate,
};
