const assert = require('node:assert/strict');
const {
  normalizeSuggestionName,
  suggestionDocumentId,
  upsertNameSuggestion,
} = require('../src/name-suggestions');

function fakeCollection() {
  const documents = new Map();
  return {
    documents,
    doc: (id) => ({
      set: async (data) => {
        documents.set(id, {...documents.get(id), ...data});
      },
    }),
  };
}

describe('name suggestions', () => {
  it('normalizes Unicode, case, and whitespace for identity', () => {
    // cspell:disable-next-line -- Full-width Unicode normalization fixture.
    assert.equal(normalizeSuggestionName('  Ａlice\t SMITH  '), 'alice smith');
  });

  it('uses the same deterministic ID for equivalent names', () => {
    assert.equal(
      suggestionDocumentId(normalizeSuggestionName('Alice')),
      suggestionDocumentId(normalizeSuggestionName(' alice ')),
    );
  });

  it('remains one document across repeated concurrent writes', async () => {
    const collection = fakeCollection();
    await Promise.all([
      upsertNameSuggestion(collection, 'Alice'),
      upsertNameSuggestion(collection, ' alice '),
      // cspell:disable-next-line -- Full-width Unicode normalization fixture.
      upsertNameSuggestion(collection, 'ＡＬＩＣＥ'),
    ]);

    assert.equal(collection.documents.size, 1);
    assert.equal([...collection.documents.values()][0].normalizedName, 'alice');
  });

  it('ignores empty and non-string names', async () => {
    const collection = fakeCollection();
    assert.equal(await upsertNameSuggestion(collection, '  '), false);
    assert.equal(await upsertNameSuggestion(collection, null), false);
    assert.equal(collection.documents.size, 0);
  });
});
