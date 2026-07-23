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
 * Converts trigger timestamps and Firestore Timestamps to milliseconds.
 * @param {*} value timestamp-like value
 * @return {number|null} epoch milliseconds
 */
function timestampMillis(value) {
  if (value && typeof value.toMillis === 'function') return value.toMillis();
  if (value instanceof Date) return value.getTime();
  const milliseconds = Date.parse(value);
  return Number.isFinite(milliseconds) ? milliseconds : null;
}

/**
 * Returns the source commit time used to reject out-of-order events.
 * @param {Object} event Firestore trigger event
 * @return {Date} source commit time
 */
function sourceUpdateTime(event) {
  const timestamp = event.time || event.data.after.updateTime ||
    event.data.before.updateTime;
  const milliseconds = timestampMillis(timestamp);
  if (milliseconds == null) {
    throw new Error('User sync event is missing a valid source timestamp');
  }
  return new Date(milliseconds);
}

/**
 * @param {Object} dependencies handler dependencies
 * @return {Function} Firestore event handler
 */
function createUserSyncHandler({db, logger}) {
  const groupRef = (groupId) => db.collection('groups').doc(groupId);

  return async (event) => {
    const beforeExists = event.data.before.exists;
    const afterExists = event.data.after.exists;
    const before = beforeExists ? event.data.before.data() : null;
    const after = afterExists ? event.data.after.data() : null;
    const userId = event.params.userId;
    const sourceUpdatedAt = sourceUpdateTime(event);
    const removedGroupIds = difference(groupIds(before), groupIds(after));
    const currentGroupIds = groupIds(after);

    const syncParticipant = async (id, data) => {
      const group = groupRef(id);
      const participant = group.collection('participants').doc(userId);
      // The separate state document is a tombstone that retains ordering after
      // a participant is deleted, preventing an older event from recreating it.
      const state = group.collection('participantSyncStates').doc(userId);
      return db.runTransaction(async (transaction) => {
        const currentState = await transaction.get(state);
        const previousMillis = currentState.exists ?
          timestampMillis(currentState.data().sourceUpdatedAt) : null;
        if (previousMillis != null &&
            previousMillis >= sourceUpdatedAt.getTime()) {
          return false;
        }

        transaction.set(state, {sourceUpdatedAt});
        if (data == null) {
          transaction.delete(participant);
        } else {
          transaction.set(participant, {...data, sourceUpdatedAt});
        }
        return true;
      });
    };

    const deletes = removedGroupIds.map((id) => syncParticipant(id, null));
    const writes = currentGroupIds.map((id) => syncParticipant(id, after));
    logger.log(`Sync user ${userId} to ${writes.length} groups`);
    await Promise.all([...deletes, ...writes]);
  };
}

module.exports = {
  createUserSyncHandler,
  difference,
  sourceUpdateTime,
  timestampMillis,
};
