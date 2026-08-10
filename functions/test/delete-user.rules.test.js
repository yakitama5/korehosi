const assert = require('node:assert/strict');
const {
  initializeTestEnvironment,
} = require('@firebase/rules-unit-testing');
const {deleteApp, initializeApp} = require('firebase-admin/app');
const {FieldValue, getFirestore} = require('firebase-admin/firestore');
const {createDeleteUserHandler} = require('../src/delete-user');

const projectId = process.env.GCLOUD_PROJECT || 'demo-korehosi';

let adminApp;
let db;
let testEnv;

const deleteHandler = (auth) => createDeleteUserHandler({
  db,
  auth,
  fieldValue: FieldValue,
});

describe('delete user transaction', () => {
  before(async () => {
    testEnv = await initializeTestEnvironment({projectId});
    adminApp = initializeApp({projectId}, 'delete-user-rules-test');
    db = getFirestore(adminApp);
  });

  after(async () => {
    await deleteApp(adminApp);
    await testEnv.cleanup();
  });

  beforeEach(async () => {
    await testEnv.clearFirestore();
  });

  it('commits membership, participant, and user cleanup together', async () => {
    await Promise.all([
      db.doc('users/user').set({
        id: 'user',
        ageGroup: 'adult',
        joinGroupIds: [],
      }),
      db.doc('groups/member').set({
        ownerUid: 'owner',
        joinUids: ['user', 'other'],
      }),
      db.doc('groups/member/participants/user').set({
        id: 'user',
        ageGroup: 'adult',
      }),
    ]);
    const authDeletes = [];

    assert.deepEqual(await deleteHandler({
      deleteUser: async (uid) => authDeletes.push(uid),
    })({auth: {uid: 'user'}}), {});

    const [user, archivedUser, group, participant, syncState, job] =
      await Promise.all([
        db.doc('users/user').get(),
        db.doc('_dusers/user').get(),
        db.doc('groups/member').get(),
        db.doc('groups/member/participants/user').get(),
        db.doc('groups/member/participantSyncStates/user').get(),
        db.doc('_userDeletionJobs/user').get(),
      ]);
    assert.equal(user.exists, false);
    assert.deepEqual(archivedUser.data(), {
      id: 'user',
      ageGroup: 'adult',
      joinGroupIds: [],
    });
    assert.deepEqual(group.data().joinUids, ['other']);
    assert.equal(participant.exists, false);
    assert.equal(syncState.exists, true);
    assert.equal(syncState.data().sourceUpdatedAt != null, true);
    assert.equal(job.exists, false);
    assert.deepEqual(authDeletes, ['user']);
  });

  it('leaves every document unchanged when the user owns a group', async () => {
    await Promise.all([
      db.doc('users/user').set({
        id: 'user',
        ageGroup: 'adult',
        joinGroupIds: ['owned', 'member'],
      }),
      db.doc('groups/owned').set({
        ownerUid: 'user',
        joinUids: ['other'],
      }),
      db.doc('groups/member').set({
        ownerUid: 'owner',
        joinUids: ['user', 'other'],
      }),
    ]);
    const authDeletes = [];

    assert.deepEqual(await deleteHandler({
      deleteUser: async (uid) => authDeletes.push(uid),
    })({auth: {uid: 'user'}}), {
      errorCode: 'owns-group',
      groupIds: ['owned'],
    });

    const [user, ownedGroup, memberGroup, archivedUser, job] =
      await Promise.all([
        db.doc('users/user').get(),
        db.doc('groups/owned').get(),
        db.doc('groups/member').get(),
        db.doc('_dusers/user').get(),
        db.doc('_userDeletionJobs/user').get(),
      ]);
    assert.equal(user.exists, true);
    assert.deepEqual(ownedGroup.data().joinUids, ['other']);
    assert.deepEqual(memberGroup.data().joinUids, ['user', 'other']);
    assert.equal(archivedUser.exists, false);
    assert.equal(job.exists, false);
    assert.deepEqual(authDeletes, []);
  });
});
