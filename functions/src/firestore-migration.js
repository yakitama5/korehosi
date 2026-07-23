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
 * Streams migration writes through one BulkWriter with bounded in-flight work.
 * @param {Firestore} db Firestore instance
 * @param {boolean} dryRun whether writes should be skipped
 * @param {number} maxInFlight maximum queued writes
 * @return {Object} operation sink
 */
function createOperationSink(db, dryRun, maxInFlight = 100) {
  const summary = {set: 0, update: 0, delete: 0};
  const writer = dryRun ? null : db.bulkWriter();
  const pending = new Set();
  const failures = [];
  if (writer) {
    writer.onWriteError((writeError) => writeError.failedAttempts < 3);
  }

  const add = async (operation) => {
    summary[operation.type]++;
    if (!writer) return;
    const write = operation.type === 'set' ?
      writer.set(operation.ref, operation.data, {merge: true}) :
      operation.type === 'update' ?
        writer.update(operation.ref, operation.data) :
        writer.delete(operation.ref);
    const tracked = write.catch((error) => failures.push(error));
    pending.add(tracked);
    tracked.finally(() => pending.delete(tracked));
    if (pending.size >= maxInFlight) {
      await Promise.race(pending);
    }
  };

  const close = async () => {
    await Promise.all(pending);
    if (writer) await writer.close();
    if (failures.length > 0) {
      const migrationError = new Error(
        `${failures.length} migration writes failed`,
      );
      migrationError.errors = failures;
      throw migrationError;
    }
  };
  return {add, close, summary};
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
  const sink = createOperationSink(db, dryRun);
  for await (const item of db.collectionGroup('items').stream()) {
    const patch = purchaseStatusPatch(item.data());
    if (Object.keys(patch).length > 0) {
      await sink.add({type: 'update', ref: item.ref, data: patch});
    }
  }

  for await (const group of db.collection('groups').stream()) {
    for (const collectionName of ['buyerNames', 'wanterNames']) {
      const collection = group.ref.collection(collectionName);
      const suggestions = await collection.get();
      const operations = suggestionMigrationOperations(
        collection, suggestions.docs,
      );
      for (const operation of operations) {
        await sink.add(operation);
      }
    }
  }

  await sink.close();
  logger.log(
    `${dryRun ? 'DRY RUN' : 'APPLY'}: ${JSON.stringify(sink.summary)}`,
  );
  return sink.summary;
}

module.exports = {
  INVALID_PURCHASE_PLAN,
  VALID_PURCHASE_PLAN,
  createOperationSink,
  migrateFirestoreData,
  purchaseStatusPatch,
  suggestionMigrationOperations,
};
