#!/usr/bin/env node

const {initializeApp} = require('firebase-admin/app');
const {getFirestore} = require('firebase-admin/firestore');
const {migrateFirestoreData} = require('../src/firestore-migration');

const dryRun = !process.argv.includes('--apply');

/** Runs the migration with application default credentials. */
async function main() {
  const app = initializeApp();
  const projectId = app.options.projectId ||
    process.env.GCLOUD_PROJECT || process.env.GOOGLE_CLOUD_PROJECT || 'unknown';
  console.log(`Project: ${projectId}`);
  console.log(`Mode: ${dryRun ? 'dry-run' : 'apply'}`);
  if (!dryRun && projectId === 'unknown') {
    throw new Error('Set GOOGLE_CLOUD_PROJECT before applying the migration');
  }
  await migrateFirestoreData(getFirestore(), {dryRun});
}

main().catch((migrationError) => {
  console.error(migrationError);
  process.exitCode = 1;
});
