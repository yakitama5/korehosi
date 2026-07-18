const crypto = require('node:crypto');

/**
 * Names are compared case-insensitively after Unicode and whitespace
 * normalization. The normalized value is only used as an identity key; the
 * trimmed display spelling is retained in Firestore.
 * @param {string} name suggestion name
 * @return {string} normalized identity
 */
function normalizeSuggestionName(name) {
  if (typeof name !== 'string') {
    return '';
  }
  return name.normalize('NFKC').trim().replace(/\s+/gu, ' ').toLowerCase();
}

/**
 * @param {string} name normalized suggestion name
 * @return {string} deterministic Firestore document ID
 */
function suggestionDocumentId(name) {
  return crypto.createHash('sha256').update(name).digest('hex');
}

/**
 * Upserts a suggestion using a deterministic ID, making concurrent triggers
 * idempotent.
 * @param {CollectionReference} collection suggestion collection
 * @param {string} name suggestion name
 * @return {Promise<boolean>} whether a non-empty suggestion was written
 */
async function upsertNameSuggestion(collection, name) {
  const normalizedName = normalizeSuggestionName(name);
  if (normalizedName.length === 0) {
    return false;
  }

  const displayName = name.normalize('NFKC').trim().replace(/\s+/gu, ' ');
  await collection.doc(suggestionDocumentId(normalizedName)).set({
    name: displayName,
    normalizedName,
  }, {merge: true});
  return true;
}

/**
 * @param {Object} dependencies handler dependencies
 * @return {Function} Firestore event handler
 */
function createSuggestionHandler({db, collectionName, fieldName}) {
  return async (event) => {
    if (!event.data.after.exists) {
      return;
    }

    const value = event.data.after.data()[fieldName];
    const collection = db.collection('groups').doc(event.params.groupId)
      .collection(collectionName);
    await upsertNameSuggestion(collection, value);
  };
}

module.exports = {
  createSuggestionHandler,
  normalizeSuggestionName,
  suggestionDocumentId,
  upsertNameSuggestion,
};
