const PURCHASE_STATUS = Object.freeze({
  NOT_PURCHASED: 'notPurchased',
  PURCHASE_PLAN: 'purchasePlan',
  PURCHASED: 'purchased',
});

/**
 * Derives the purchase status stored on an item.
 * @param {DocumentSnapshot} purchaseDoc purchase document snapshot
 * @return {string} purchase status
 */
function getPurchaseStatus(purchaseDoc) {
  if (!purchaseDoc.exists) {
    return PURCHASE_STATUS.NOT_PURCHASED;
  }

  const purchase = purchaseDoc.data();
  if (purchase.sentAt != null) {
    return PURCHASE_STATUS.PURCHASED;
  }
  if (purchase.planDate != null) {
    return PURCHASE_STATUS.PURCHASE_PLAN;
  }
  return PURCHASE_STATUS.NOT_PURCHASED;
}

/**
 * Hides planned surprise purchases from children until they are purchased.
 * @param {DocumentSnapshot} purchaseDoc purchase document snapshot
 * @param {string} purchaseStatus purchase status visible to adults
 * @return {string} purchase status visible to children
 */
function getChildPurchaseStatus(purchaseDoc, purchaseStatus) {
  if (!purchaseDoc.exists) {
    return PURCHASE_STATUS.NOT_PURCHASED;
  }

  if (!purchaseDoc.data().surprise) {
    return purchaseStatus;
  }

  return purchaseStatus === PURCHASE_STATUS.PURCHASED ?
    PURCHASE_STATUS.PURCHASED : PURCHASE_STATUS.NOT_PURCHASED;
}

module.exports = {
  PURCHASE_STATUS,
  getChildPurchaseStatus,
  getPurchaseStatus,
};
