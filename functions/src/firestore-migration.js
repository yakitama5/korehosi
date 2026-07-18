const {
  normalizeSuggestionName,
  suggestionDocumentId,
} = require('./name-suggestions');

const INVALID_PURCHASE_PLAN = 'purchasePlan;';
const VALID_PURCHASE_PLAN = 'purchasePlan';

/**
 * @param {Object} data item data
 * @return {Object} fields requiring correction
 */
function purchaseStatusPatch(data) {
  const patch = {};
  if (data.purchaseStatus === INVALID_PURCHASE_PLAN) {
    patch.purchaseStatus = VALID_PURCHASE_PLAN;
  }
  if (data.childViewPurchaseStatus === INVALID_PURCHASE_PLAN) {
    patch.childViewPurchaseStatus = VALID_PURCHASE_PLAN;
  }
  return patch;
}

/**
 * @param {CollectionReference} collection suggestion collection
 * @param {DocumentSnapshot[]} documents current suggestion documents
 * @return {Object[]} deterministic set and duplicate delete operations
 */
function suggestionMigrationOperations(collection, documents) {
  const groups = new Map();
  const deletes = [];
  for (const document of documents) {
    const name = document.data().name;
    const normalizedName = normalizeSuggestionName(name);
    if (normalizedName.length === 0) {
      deletes.push({type: 'delete', ref: document.ref});
      continue;
    }
    const entries = groups.get(normalizedName) || [];
    entries.push(document);
    groups.set(normalizedName, entries);
  }

  const operations = [...deletes];
  for (const [normalizedName, entries] of groups.entries()) {
    const targetId = suggestionDocumentId(normalizedName);
    const targetRef = collection.doc(targetId);
    const existingTarget = entries.find(({id}) => id === targetId);
    const targetEntry = existingTarget || entries[0];
    const displayName = targetEntry.data().name.normalize('NFKC')
      .trim().replace(/\s+/gu, ' ');
    const existingData = existingTarget && existingTarget.data();
    if (!existingData || existingData.name !== displayName ||
      existingData.normalizedName !== normalizedName) {
      operations.push({
        type: 'set',
        ref: targetRef,
        data: {name: displayName, normalizedName},
      });
    }
    for (const entry of entries) {
      if (entry.id !== targetId) {
        operations.push({type: 'delete', ref: entry.ref});
      }
    }
  }
  return operations;
}

/**
 * @param {Firestore} db Firestore instance
 * @param {Object[]} operations migration operations
 * @return {Promise<void>}
 */
async function applyOperations(db, operations) {
  const writer = db.bulkWriter();
  writer.onWriteError((writeError) => writeError.failedAttempts < 3);
  const writes = [];
  for (const operation of operations) {
    if (operation.type === 'set') {
      writes.push(writer.set(operation.ref, operation.data, {merge: true}));
    } else if (operation.type === 'update') {
      writes.push(writer.update(operation.ref, operation.data));
    } else {
      writes.push(writer.delete(operation.ref));
    }
  }
  const writesCompleted = Promise.allSettled(writes);
  await writer.close();
  const results = await writesCompleted;
  const failures = results.filter(({status}) => status === 'rejected');
  if (failures.length > 0) {
    const migrationError = new Error(
      `${failures.length} migration writes failed`,
    );
    migrationError.errors = failures.map(({reason}) => reason);
    throw migrationError;
  }
}

/**
 * Fixes historical invalid statuses and rewrites suggestion documents to the
 * deterministic IDs used by current triggers.
 * @param {Firestore} db Firestore instance
 * @param {Object} options migration options
 * @return {Promise<Object>} operation counts
 */
async function migrateFirestoreData(
  db,
  {dryRun = true, logger = console} = {},
) {
  const operations = [];
  const items = await db.collectionGroup('items').get();
  for (const item of items.docs) {
    const patch = purchaseStatusPatch(item.data());
    if (Object.keys(patch).length > 0) {
      operations.push({type: 'update', ref: item.ref, data: patch});
    }
  }

  const groups = await db.collection('groups').get();
  for (const group of groups.docs) {
    for (const collectionName of ['buyerNames', 'wanterNames']) {
      const collection = group.ref.collection(collectionName);
      const suggestions = await collection.get();
      operations.push(...suggestionMigrationOperations(
        collection,
        suggestions.docs,
      ));
    }
  }

  const summary = operations.reduce((result, operation) => {
    result[operation.type]++;
    return result;
  }, {set: 0, update: 0, delete: 0});
  logger.log(`${dryRun ? 'DRY RUN' : 'APPLY'}: ${JSON.stringify(summary)}`);
  if (!dryRun) {
    await applyOperations(db, operations);
  }
  return summary;
}

module.exports = {
  INVALID_PURCHASE_PLAN,
  VALID_PURCHASE_PLAN,
  migrateFirestoreData,
  purchaseStatusPatch,
  suggestionMigrationOperations,
};
