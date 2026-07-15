const fs = require('node:fs');
const path = require('node:path');

const {
  assertFails,
  assertSucceeds,
  initializeTestEnvironment,
} = require('@firebase/rules-unit-testing');
const {
  deleteDoc,
  doc,
  getDoc,
  setDoc,
  updateDoc,
} = require('firebase/firestore');
const {
  ref,
  uploadString,
} = require('firebase/storage');

const projectId = 'demo-korehosi';
const groupId = 'family';
const memberId = 'member';
const outsiderId = 'outsider';
const rootPath = path.resolve(__dirname, '..', '..');

let testEnv;

const memberFirestore = () =>
  testEnv.authenticatedContext(memberId).firestore();
const outsiderFirestore = () =>
  testEnv.authenticatedContext(outsiderId).firestore();

describe('Firebase security rules', () => {
  before(async () => {
    testEnv = await initializeTestEnvironment({
      projectId,
      firestore: {
        rules: fs.readFileSync(
          path.join(rootPath, 'firestore.rules'),
          'utf8',
        ),
      },
      storage: {
        rules: fs.readFileSync(path.join(rootPath, 'storage.rules'), 'utf8'),
      },
    });
  });

  after(async () => {
    await testEnv.cleanup();
  });

  beforeEach(async () => {
    await testEnv.clearFirestore();
    await testEnv.clearStorage();
    await testEnv.withSecurityRulesDisabled(async (context) => {
      await setDoc(doc(context.firestore(), 'groups', groupId), {
        id: groupId,
        name: 'Family',
        ownerUid: memberId,
        joinUids: [memberId],
      });
    });
  });

  it('allows users to access only their own profile', async () => {
    const ownProfile = doc(memberFirestore(), 'users', memberId);
    const otherProfile = doc(memberFirestore(), 'users', outsiderId);

    await assertSucceeds(setDoc(ownProfile, {id: memberId}));
    await assertSucceeds(getDoc(ownProfile));
    await assertFails(getDoc(otherProfile));
  });

  it('allows group members and rejects outsiders', async () => {
    const memberGroup = doc(memberFirestore(), 'groups', groupId);
    const outsiderGroup = doc(outsiderFirestore(), 'groups', groupId);
    const memberItem = doc(memberGroup, 'items', 'item');
    const outsiderItem = doc(outsiderGroup, 'items', 'item');

    await assertSucceeds(getDoc(memberGroup));
    await assertSucceeds(setDoc(memberItem, {id: 'item', name: 'Gift'}));
    await assertSucceeds(updateDoc(memberItem, {name: 'New gift'}));
    await assertSucceeds(deleteDoc(memberItem));
    await assertFails(getDoc(outsiderGroup));
    await assertFails(setDoc(outsiderItem, {id: 'item'}));
  });

  it(
    'allows signed-in users to resolve links but only members create them',
    async () => {
      const memberLink = doc(memberFirestore(), 'shareLinks', 'invite');
      const outsiderLink = doc(outsiderFirestore(), 'shareLinks', 'invite');

      await assertSucceeds(
        setDoc(memberLink, {id: 'invite', groupId, validDays: 1}),
      );
      await assertSucceeds(getDoc(outsiderLink));
      await assertFails(
        setDoc(
          doc(outsiderFirestore(), 'shareLinks', 'invalid'),
          {id: 'invalid', groupId, validDays: 1},
        ),
      );
    },
  );

  it('allows only group members to upload image files', async () => {
    const imagePath = `group/${groupId}/item/item/image`;
    const memberImage = ref(
      testEnv.authenticatedContext(memberId).storage(),
      imagePath,
    );
    const outsiderImage = ref(
      testEnv.authenticatedContext(outsiderId).storage(),
      imagePath,
    );

    await assertSucceeds(
      uploadString(memberImage, 'image', 'raw', {contentType: 'image/png'}),
    );
    await assertFails(
      uploadString(outsiderImage, 'image', 'raw', {contentType: 'image/png'}),
    );
    await assertFails(
      uploadString(memberImage, 'text', 'raw', {contentType: 'text/plain'}),
    );
  });
});
