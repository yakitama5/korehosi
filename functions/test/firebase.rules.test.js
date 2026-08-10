const assert = require('node:assert/strict');
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
  serverTimestamp,
  setDoc,
  updateDoc,
} = require('firebase/firestore');
const {
  ref,
  uploadString,
} = require('firebase/storage');

const projectId = process.env.GCLOUD_PROJECT || 'demo-korehosi';
const groupId = 'family';
const memberId = 'member';
const adultId = 'adult';
const childId = 'child';
const outsiderId = 'outsider';
const rootPath = path.resolve(__dirname, '..', '..');

let testEnv;

const memberFirestore = () =>
  testEnv.authenticatedContext(memberId).firestore();
const adultFirestore = () =>
  testEnv.authenticatedContext(adultId).firestore();
const childFirestore = () =>
  testEnv.authenticatedContext(childId).firestore();
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
        joinUids: [memberId, adultId, childId],
        premium: false,
        itemCount: 0,
      });
      await setDoc(
        doc(
          context.firestore(),
          'groups',
          groupId,
          'participants',
          memberId,
        ),
        {id: memberId, ageGroup: 'adult'},
      );
      await setDoc(
        doc(
          context.firestore(),
          'groups',
          groupId,
          'participants',
          adultId,
        ),
        {id: adultId, ageGroup: 'adult'},
      );
      await setDoc(
        doc(
          context.firestore(),
          'groups',
          groupId,
          'participants',
          childId,
        ),
        {id: childId, ageGroup: 'child'},
      );
    });
  });

  it('allows users to access only their own profile', async () => {
    const ownProfile = doc(memberFirestore(), 'users', memberId);
    const otherProfile = doc(memberFirestore(), 'users', outsiderId);

    await assertSucceeds(
      setDoc(ownProfile, {
        id: memberId,
        ageGroup: 'adult',
        name: 'Member',
        joinGroupIds: [groupId, 'other'],
      }),
    );
    await assertSucceeds(getDoc(ownProfile));
    await assertFails(getDoc(otherProfile));
    await assertSucceeds(updateDoc(ownProfile, {name: 'New name'}));
    await assertFails(updateDoc(ownProfile, {ageGroup: 'child'}));
    await assertFails(updateDoc(ownProfile, {id: outsiderId}));
    await assertSucceeds(updateDoc(ownProfile, {joinGroupIds: [groupId]}));
    await assertFails(
      updateDoc(ownProfile, {joinGroupIds: [groupId, outsiderId]}),
    );
  });

  it('allows the profile update payload without changing age group', async () => {
    const profile = doc(adultFirestore(), 'users', adultId);

    await assertSucceeds(
      setDoc(profile, {
        id: adultId,
        ageGroup: 'adult',
        name: 'Before',
        joinGroupIds: [groupId],
      }),
    );
    await assertSucceeds(
      updateDoc(profile, {
        name: 'After',
        updatedAt: serverTimestamp(),
      }),
    );

    const updatedProfile = await assertSucceeds(getDoc(profile));
    assert.equal(updatedProfile.data().name, 'After');
    assert.equal(updatedProfile.data().ageGroup, 'adult');
  });

  it('prevents a child from granting themselves adult access', async () => {
    const childProfile = doc(childFirestore(), 'users', childId);
    const deletedChildProfile = doc(
      childFirestore(),
      '_dusers',
      childId,
    );

    await assertSucceeds(
      setDoc(childProfile, {id: childId, ageGroup: 'child'}),
    );
    await assertFails(updateDoc(childProfile, {ageGroup: 'adult'}));
    await assertFails(deleteDoc(childProfile));
    await assertFails(
      setDoc(deletedChildProfile, {id: childId, ageGroup: 'adult'}),
    );
    await testEnv.withSecurityRulesDisabled(async (context) => {
      await deleteDoc(doc(context.firestore(), 'users', childId));
      await setDoc(doc(context.firestore(), '_dusers', childId), {
        id: childId,
        ageGroup: 'child',
      });
    });
    await assertFails(
      setDoc(childProfile, {id: childId, ageGroup: 'adult'}),
    );
  });

  it('allows only valid self-owned wish reminder settings', async () => {
    const ownSettings = doc(
      memberFirestore(),
      'users',
      memberId,
      'notificationSettings',
      'wishReminder',
    );
    const otherSettings = doc(
      outsiderFirestore(),
      'users',
      memberId,
      'notificationSettings',
      'wishReminder',
    );
    const validSettings = {
      enabled: true,
      offsetDays: [0, 1, 7],
      audience: 'adult',
      timeZone: 'Asia/Tokyo',
      updatedAt: serverTimestamp(),
    };

    await assertSucceeds(setDoc(ownSettings, validSettings));
    await assertSucceeds(getDoc(ownSettings));
    await assertFails(getDoc(otherSettings));
    await assertFails(setDoc(otherSettings, validSettings));
    await assertFails(
      setDoc(ownSettings, {...validSettings, offsetDays: [2]}),
    );
    await assertFails(
      setDoc(ownSettings, {...validSettings, audience: 'child'}),
    );
    await assertFails(
      setDoc(ownSettings, {
        ...validSettings,
        offsetDays: [],
      }),
    );
  });

  it('allows group members and rejects outsiders', async () => {
    const memberGroup = doc(memberFirestore(), 'groups', groupId);
    const outsiderGroup = doc(outsiderFirestore(), 'groups', groupId);
    const memberItem = doc(memberGroup, 'items', 'item');
    const childItem = doc(
      childFirestore(),
      'groups',
      groupId,
      'items',
      'child-item',
    );
    const outsiderItem = doc(outsiderGroup, 'items', 'item');

    await assertSucceeds(getDoc(memberGroup));
    await assertSucceeds(setDoc(memberItem, {id: 'item', name: 'Gift'}));
    await assertSucceeds(updateDoc(memberItem, {name: 'New gift'}));
    await assertSucceeds(deleteDoc(memberItem));
    await assertSucceeds(setDoc(childItem, {id: 'child-item', name: 'Gift'}));
    await assertSucceeds(deleteDoc(childItem));
    await assertFails(getDoc(outsiderGroup));
    await assertFails(setDoc(outsiderItem, {id: 'item'}));
  });

  it('allows only adults to access purchase details', async () => {
    const adultPurchase = doc(
      adultFirestore(),
      'groups',
      groupId,
      'purchases',
      'gift',
    );
    const childPurchase = doc(
      childFirestore(),
      'groups',
      groupId,
      'purchases',
      'gift',
    );
    const outsiderPurchase = doc(
      outsiderFirestore(),
      'groups',
      groupId,
      'purchases',
      'gift',
    );
    const purchase = {
      id: 'gift',
      price: 3000,
      buyerName: 'Parent',
      surprise: true,
      memo: 'Keep this secret',
      uid: adultId,
    };

    await assertSucceeds(setDoc(adultPurchase, purchase));
    await assertSucceeds(getDoc(adultPurchase));
    await assertSucceeds(updateDoc(adultPurchase, {price: 3500}));
    await assertFails(getDoc(childPurchase));
    await assertFails(setDoc(childPurchase, purchase));
    await assertFails(updateDoc(childPurchase, {price: 1}));
    await assertFails(deleteDoc(childPurchase));
    await assertFails(getDoc(outsiderPurchase));
    await assertFails(setDoc(outsiderPurchase, purchase));
    await assertSucceeds(deleteDoc(adultPurchase));
  });

  it('protects archived purchase details from children', async () => {
    await testEnv.withSecurityRulesDisabled(async (context) => {
      for (const collection of ['_cpurchases', '_dpurchases']) {
        await setDoc(
          doc(context.firestore(), 'groups', groupId, collection, 'gift'),
          {id: 'gift', price: 3000, surprise: true},
        );
      }
    });

    for (const collection of ['_cpurchases', '_dpurchases']) {
      await assertSucceeds(
        getDoc(doc(adultFirestore(), 'groups', groupId, collection, 'gift')),
      );
      await assertFails(
        getDoc(doc(childFirestore(), 'groups', groupId, collection, 'gift')),
      );
      await assertFails(
        getDoc(
          doc(outsiderFirestore(), 'groups', groupId, collection, 'gift'),
        ),
      );
    }
  });

  it(
    'allows group name updates while protecting privileged fields',
    async () => {
      const group = doc(adultFirestore(), 'groups', groupId);

      await assertSucceeds(updateDoc(group, {name: 'New family name'}));
      await assertFails(updateDoc(group, {name: ''}));
      await assertFails(updateDoc(group, {name: 123}));
      await assertFails(updateDoc(group, {name: 'x'.repeat(31)}));
      await assertSucceeds(
        setDoc(group, {
          id: groupId,
          name: 'Set family name',
          ownerUid: memberId,
          joinUids: [memberId, adultId, childId],
          premium: false,
          itemCount: 0,
          updatedAt: new Date(),
        }),
      );
      await assertFails(updateDoc(group, {ownerUid: adultId}));
      await assertFails(updateDoc(group, {premium: true}));
      await assertFails(updateDoc(group, {itemCount: 999}));
      await assertFails(
        updateDoc(group, {joinUids: [memberId, adultId, childId, outsiderId]}),
      );
      await assertFails(
        updateDoc(group, {joinUids: [memberId, adultId]}),
      );
    },
  );

  it('allows only a non-owner member to remove themselves', async () => {
    const adultGroup = doc(adultFirestore(), 'groups', groupId);
    const ownerGroup = doc(memberFirestore(), 'groups', groupId);

    await assertFails(
      updateDoc(ownerGroup, {joinUids: [adultId, childId]}),
    );
    await assertFails(
      updateDoc(adultGroup, {joinUids: [memberId, memberId]}),
    );
    await assertSucceeds(
      updateDoc(adultGroup, {joinUids: [memberId, childId]}),
    );
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
