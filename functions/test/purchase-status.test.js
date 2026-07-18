const assert = require('node:assert/strict');
const {
  PURCHASE_STATUS,
  getChildPurchaseStatus,
  getPurchaseStatus,
} = require('../src/purchase-status');

const snapshot = (data) => ({
  exists: data != null,
  data: () => data,
});

describe('purchase status', () => {
  it('returns notPurchased when no purchase exists', () => {
    const purchase = snapshot(null);
    assert.equal(getPurchaseStatus(purchase), PURCHASE_STATUS.NOT_PURCHASED);
    assert.equal(
      getChildPurchaseStatus(purchase, PURCHASE_STATUS.NOT_PURCHASED),
      PURCHASE_STATUS.NOT_PURCHASED,
    );
  });

  it('returns purchasePlan without a trailing semicolon', () => {
    const purchase = snapshot({planDate: new Date(), surprise: false});
    const status = getPurchaseStatus(purchase);
    assert.equal(status, 'purchasePlan');
    assert.equal(getChildPurchaseStatus(purchase, status), 'purchasePlan');
  });

  it('prefers purchased when sentAt and planDate both exist', () => {
    const purchase = snapshot({sentAt: new Date(), planDate: new Date()});
    assert.equal(getPurchaseStatus(purchase), PURCHASE_STATUS.PURCHASED);
  });

  it('hides an unpurchased surprise from children', () => {
    const purchase = snapshot({planDate: new Date(), surprise: true});
    assert.equal(
      getChildPurchaseStatus(purchase, getPurchaseStatus(purchase)),
      PURCHASE_STATUS.NOT_PURCHASED,
    );
  });

  it('shows a purchased surprise to children', () => {
    const purchase = snapshot({sentAt: new Date(), surprise: true});
    assert.equal(
      getChildPurchaseStatus(purchase, getPurchaseStatus(purchase)),
      PURCHASE_STATUS.PURCHASED,
    );
  });
});
