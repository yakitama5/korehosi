const assert = require('node:assert/strict');
const {
  migrateFirestoreData,
  purchaseStatusPatch,
  suggestionMigrationOperations,
} = require('../src/firestore-migration');
const {
  normalizeSuggestionName,
  suggestionDocumentId,
} = require('../src/name-suggestions');

const document = (id, name, extra = {}) => ({
  id,
  ref: {path: `names/${id}`},
  data: () => ({name, ...extra}),
});

describe('Firestore data migration', () => {
  it('patches both historical purchase status fields', () => {
    assert.deepEqual(purchaseStatusPatch({
      purchaseStatus: 'purchasePlan;',
      childViewPurchaseStatus: 'purchasePlan;',
    }), {
      purchaseStatus: 'purchasePlan',
      childViewPurchaseStatus: 'purchasePlan',
    });
    assert.deepEqual(purchaseStatusPatch({purchaseStatus: 'purchased'}), {});
  });

  it('merges equivalent suggestions into a deterministic document', () => {
    const targetId = suggestionDocumentId(normalizeSuggestionName('Alice'));
    const collection = {doc: (id) => ({path: `names/${id}`})};
    const operations = suggestionMigrationOperations(collection, [
      document('random-a', 'Alice'),
      document('random-b', ' alice '),
    ]);
    assert.deepEqual(operations.map(({type, ref}) => [type, ref.path]), [
      ['set', `names/${targetId}`],
      ['delete', 'names/random-a'],
      ['delete', 'names/random-b'],
    ]);
  });

  it('does not rewrite an already migrated suggestion', () => {
    const normalizedName = normalizeSuggestionName('Alice');
    const targetId = suggestionDocumentId(normalizedName);
    const collection = {doc: (id) => ({path: `names/${id}`})};
    assert.deepEqual(suggestionMigrationOperations(collection, [
      document(targetId, 'Alice', {normalizedName}),
    ]), []);
  });

  it('streams items and groups without accumulating migration writes', async () => {
    const item = {
      ref: {path: 'groups/group/items/item'},
      data: () => ({purchaseStatus: 'purchasePlan;'}),
    };
    const names = {
      doc: (id) => ({path: `names/${id}`}),
      get: async () => ({docs: [document('legacy', 'Alice')]}),
    };
    const group = {
      ref: {collection: () => names},
    };
    const stream = (values) => async function* () {
      yield* values;
    };
    const db = {
      collectionGroup: () => ({stream: stream([item])}),
      collection: () => ({stream: stream([group])}),
    };

    const summary = await migrateFirestoreData(db, {
      logger: {log: () => {}},
    });

    assert.deepEqual(summary, {set: 2, update: 1, delete: 2});
  });
});
