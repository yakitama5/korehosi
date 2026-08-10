const ERROR_CODE = Object.freeze({
  NOT_AUTH: 'not-auth',
  OWNS_GROUP: 'owns-group',
});
const MAX_RETRY_ATTEMPTS = 5;

/**
 * Deletes an Auth account and then removes its durable retry job.
 * @param {Object} options deletion options
 * @return {Promise<void>}
 */
async function completeUserDeletion({auth, jobRef, uid}) {
  try {
    await auth.deleteUser(uid);
  } catch (deleteError) {
    if (deleteError.code !== 'auth/user-not-found') {
      throw deleteError;
    }
  }
  await jobRef.delete();
}

/**
 * Cleans group membership, archives Firestore data, and persists a retry job
 * before deleting Auth.
 * @param {Object} dependencies handler dependencies
 * @return {Function} callable request handler
 */
function createDeleteUserHandler({
  db,
  auth,
  fieldValue,
  clock = () => new Date(),
}) {
  return async (request) => {
    const uid = request && request.auth && request.auth.uid;
    if (typeof uid !== 'string' || uid.length === 0) {
      return {errorCode: ERROR_CODE.NOT_AUTH};
    }

    const userRef = db.collection('users').doc(uid);
    const deletedUserRef = db.collection('_dusers').doc(uid);
    const jobRef = db.collection('_userDeletionJobs').doc(uid);
    const groupsRef = db.collection('groups');
    const ownedGroupsQuery = groupsRef.where('ownerUid', '==', uid);
    const membershipsQuery = groupsRef.where(
      'joinUids',
      'array-contains',
      uid,
    );
    const updatedAt = clock();
    const ownerGroupIds = await db.runTransaction(async (transaction) => {
      const [user, ownedGroups, memberships] = await Promise.all([
        transaction.get(userRef),
        transaction.get(ownedGroupsQuery),
        transaction.get(membershipsQuery),
      ]);
      const ownedGroupIds = ownedGroups.docs.map(({id}) => id).sort();
      if (ownedGroupIds.length > 0) {
        return ownedGroupIds;
      }

      for (const group of memberships.docs) {
        const joinUids = Array.isArray(group.data().joinUids) ?
          group.data().joinUids : [];
        const participantRef = group.ref.collection('participants').doc(uid);
        const syncStateRef = group.ref
          .collection('participantSyncStates')
          .doc(uid);
        transaction.update(group.ref, {
          joinUids: joinUids.filter((memberUid) => memberUid !== uid),
        });
        // Advance the same ordering tombstone used by user-sync so a delayed
        // profile event cannot recreate the participant after this cleanup.
        transaction.set(syncStateRef, {
          sourceUpdatedAt: fieldValue.serverTimestamp(),
        });
        transaction.delete(participantRef);
      }

      if (user.exists) {
        transaction.set(deletedUserRef, user.data());
        transaction.delete(userRef);
      }
      transaction.set(jobRef, {
        uid,
        status: 'pending',
        updatedAt,
      }, {merge: true});
      return [];
    });

    if (ownerGroupIds.length > 0) {
      return {
        errorCode: ERROR_CODE.OWNS_GROUP,
        groupIds: ownerGroupIds,
      };
    }

    await completeUserDeletion({auth, jobRef, uid});
    return {};
  };
}

/**
 * Retries durable deletion jobs left by transient Authentication failures.
 * @param {Object} dependencies handler dependencies
 * @return {Function} scheduled handler
 */
function createRetryUserDeletionsHandler({
  db,
  auth,
  logger = console,
  batchSize = 100,
  clock = () => new Date(),
  maxRetryAttempts = MAX_RETRY_ATTEMPTS,
}) {
  return async () => {
    const jobs = await db.collection('_userDeletionJobs')
      .where('status', '==', 'pending')
      .limit(batchSize)
      .get();
    const results = await Promise.allSettled(jobs.docs.map(async (job) => {
      try {
        await completeUserDeletion({auth, jobRef: job.ref, uid: job.id});
      } catch (deletionError) {
        const data = job.data();
        const previousAttempts = Number.isInteger(data.attempts) &&
          data.attempts >= 0 ? data.attempts : 0;
        const attempts = previousAttempts + 1;
        await job.ref.set({
          attempts,
          status: attempts >= maxRetryAttempts ? 'failed' : 'pending',
          lastErrorCode: typeof deletionError.code === 'string' ?
            deletionError.code : 'unknown',
          updatedAt: clock(),
        }, {merge: true});
        throw deletionError;
      }
    }));
    const failures = results
      .filter(({status}) => status === 'rejected')
      .map(({reason}) => reason);
    if (failures.length > 0) {
      failures.forEach((failure) =>
        logger.error('Failed to retry user deletion', failure));
      const retryError = new Error(`${failures.length} user deletions failed`);
      retryError.errors = failures;
      throw retryError;
    }
    return jobs.docs.length;
  };
}

module.exports = {
  ERROR_CODE,
  completeUserDeletion,
  createDeleteUserHandler,
  createRetryUserDeletionsHandler,
};
