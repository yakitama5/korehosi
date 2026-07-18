const assert = require('node:assert/strict');
const {
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
});
