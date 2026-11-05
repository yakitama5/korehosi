const assert = require('node:assert/strict');
const {deleteApp, getApps} = require('firebase-admin/app');

describe('Functions runtime', () => {
  it('loads all deployed handlers with the installed Firebase SDKs', async () => {
    const previousProject = process.env.GCLOUD_PROJECT;
    process.env.GCLOUD_PROJECT = 'demo-korehosi';
    try {
      const handlers = require('../index');
      assert.deepEqual(Object.keys(handlers).sort(), [
        'onWriteItem',
        'onWritePurchase',
        'scheduledBatchUpdatePurchaseStatus',
        'scheduledRetryUserDeletions',
        'scheduledWishDateReminders',
        'v2DeleteUser',
        'v2JoinGroup',
        'v2OnCreateMessage',
        'v2OnDeleteGroup',
        'v2OnWriteUser',
      ]);
      for (const handler of Object.values(handlers)) {
        assert.equal(typeof handler, 'function');
        assert.ok(handler.__endpoint);
      }
    } finally {
      await Promise.all(getApps().map((app) => deleteApp(app)));
      if (previousProject === undefined) {
        delete process.env.GCLOUD_PROJECT;
      } else {
        process.env.GCLOUD_PROJECT = previousProject;
      }
    }
  });
});
