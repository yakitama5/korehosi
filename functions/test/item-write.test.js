const assert = require('node:assert/strict');
const {describe, it} = require('node:test');
const {createItemWriteHandler} = require('../src/item-write');

describe('item write handler', () => {
  it('deletes the protected purchase after an item is deleted', async () => {
    const calls = [];
    const event = {
      data: {after: {exists: false}},
      params: {groupId: 'group-1', itemId: 'item-1'},
    };
    const handler = createItemWriteHandler({
      db: {
        doc: (path) => ({
          delete: async () => calls.push(['delete', path]),
        }),
      },
      updateSuggestion: async (received) =>
        calls.push(['suggestion', received]),
    });

    await handler(event);

    assert.deepEqual(calls, [
      ['suggestion', event],
      ['delete', 'groups/group-1/purchases/item-1'],
    ]);
  });

  it('does not delete a purchase when an item still exists', async () => {
    let deleted = false;
    const handler = createItemWriteHandler({
      db: {
        doc: () => ({
          delete: async () => {
            deleted = true;
          },
        }),
      },
      updateSuggestion: async () => {},
    });

    await handler({data: {after: {exists: true}}, params: {}});

    assert.equal(deleted, false);
  });
});
