/**
 * @param {Array} source source values
 * @param {Array} target values to exclude
 * @return {Array} values unique to source
 */
function difference(source = [], target = []) {
  const targetValues = new Set(target);
  return source.filter((value) => !targetValues.has(value));
}

/**
 * @param {Object|null} user user data
 * @return {string[]} safely read group IDs
 */
function groupIds(user) {
  return user && Array.isArray(user.joinGroupIds) ? user.joinGroupIds : [];
}

/**
 * @param {Object} dependencies handler dependencies
 * @return {Function} Firestore event handler
 */
function createUserSyncHandler({db, logger}) {
  const participantRef = (groupId, userId) => db.collection('groups')
    .doc(groupId).collection('participants').doc(userId);

  return async (event) => {
    const beforeExists = event.data.before.exists;
    const afterExists = event.data.after.exists;
    const before = beforeExists ? event.data.before.data() : null;
    const after = afterExists ? event.data.after.data() : null;
    const userId = event.params.userId;

    if (!afterExists) {
      await Promise.all(groupIds(before).map((id) =>
        participantRef(id, userId).delete()));
      return;
    }

    const removedGroupIds = difference(groupIds(before), groupIds(after));
    const deletes = removedGroupIds.map((id) =>
      participantRef(id, userId).delete());
    const writes = groupIds(after).map((id) =>
      participantRef(id, userId).set(after));
    logger.log(`Sync user ${userId} to ${writes.length} groups`);
    await Promise.all([...deletes, ...writes]);
  };
}

module.exports = {
  createUserSyncHandler,
  difference,
};
