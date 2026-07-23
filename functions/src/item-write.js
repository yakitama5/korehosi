/**
 * Composes the item suggestion update with server-side purchase cleanup.
 * Children may delete items, but purchase details remain adult-only, so the
 * related purchase must be removed with Admin SDK privileges.
 * @param {Object} dependencies handler dependencies
 * @return {Function} Firestore item write handler
 */
function createItemWriteHandler({db, updateSuggestion}) {
  return async (event) => {
    await updateSuggestion(event);

    if (event.data.after.exists) {
      return;
    }

    const {groupId, itemId} = event.params;
    await db.doc(`groups/${groupId}/purchases/${itemId}`).delete();
  };
}

module.exports = {createItemWriteHandler};
