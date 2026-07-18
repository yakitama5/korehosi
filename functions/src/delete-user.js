const ERROR_CODE = Object.freeze({
  NOT_AUTH: 'not-auth',
});

/**
 * Deletes only the authenticated caller. Firestore archival is committed
 * before the Authentication account is removed so a failed archive never
 * leaves an untracked deletion.
 * @param {Object} dependencies handler dependencies
 * @return {Function} callable request handler
 */
function createDeleteUserHandler({db, auth}) {
  return async (request) => {
    const uid = request && request.auth && request.auth.uid;
    if (typeof uid !== 'string' || uid.length === 0) {
      return {errorCode: ERROR_CODE.NOT_AUTH};
    }

    const userRef = db.collection('users').doc(uid);
    const deletedUserRef = db.collection('_dusers').doc(uid);
    await db.runTransaction(async (transaction) => {
      const user = await transaction.get(userRef);
      if (!user.exists) {
        return;
      }
      transaction.set(deletedUserRef, user.data());
      transaction.delete(userRef);
    });

    try {
      await auth.deleteUser(uid);
    } catch (deleteError) {
      if (deleteError.code !== 'auth/user-not-found') {
        throw deleteError;
      }
    }
    return {};
  };
}

module.exports = {
  ERROR_CODE,
  createDeleteUserHandler,
};
