const admin = require('firebase-admin');
const functions = require('firebase-functions');

admin.initializeApp();
const db = admin.firestore();
const remoteConfig = admin.remoteConfig();

const jpRegion = 'asia-northeast1';
const tokyoTimeZone = 'Asia/Tokyo';

// コレクションパス
const GROUPS_PATH = 'groups';
const PARTICIPANTS_PATH = 'participants';

// 処理内のTimeZone指定
process.env.TZ = tokyoTimeZone;

// Create and Deploy Your First Cloud Functions
// https://firebase.google.com/docs/functions/write-firebase-functions

/**
 * 【呼び出し】
 * グループへの参加
 */
exports.joinGroup = functions
  .runWith({
    enforceAppCheck: true,
  })
  .region(jpRegion)
  .https.onCall(async (data, context) => {
    // 認証済か否か
    const user = await admin.auth().getUser(context.auth.uid);
    if (!user) {
      return {
        'errorCode': 'not-auth',
      };
    }

    // パラメタが設定されているか
    const shareLinkId = data.shareLinkId;
    if (!shareLinkId) {
      return {
        'errorCode': 'invalid-param',
      };
    }

    // リンクの有効期限チェック
    // HACK(yakitama5): FiedlValueを利用した書き方に変更すること
    const now = new Date();
    const linkSnap = await db.collection('shareLinks').doc(shareLinkId).get();
    const linkData = linkSnap.data();
    const createdAt = linkData.createdAt.toDate();
    const validDate = createdAt
      .setDate(createdAt.getDate() + linkData.validDays);
    if (validDate <= now) {
      return {
        'errorCode': 'invalid-date',
      };
    }

    // 参加済チェック
    const groupSnap = await db.collection('groups').doc(linkData.groupId).get();
    const groupData = groupSnap.data();
    if (groupData.joinUids.includes(user.uid)) {
      return {
        'errorCode': 'joined-group',
      };
    }

    // グループの上限数確認
    const rcTemplate = await remoteConfig.getTemplate();
    const parameters = rcTemplate.parameters;
    const maxGroup = parameters.max_group_count_by_free_plan.defaultValue.value;

    const userRef = db.collection('users').doc(user.uid);
    const userDoc = await userRef.get();
    const joinGroupIds = userDoc.data().joinGroupIds;
    if (joinGroupIds.length >= maxGroup) {
      return {
        'errorCode': 'over-count',
      };
    }

    // グループ および ユーザー情報の取得
    const groupRef = db.collection('groups').doc(linkData.groupId);
    db.runTransaction(async (t) => {
      t.update(groupRef, {
        'joinUids': admin.firestore.FieldValue.arrayUnion(user.uid),
      }).update(userRef, {
        'joinGroupIds': admin.firestore.FieldValue.arrayUnion(linkData.groupId),
      });
    });

    return {};
  });


/**
 * 【監視処理】
 * 投稿が変更されたタイミングで、タグ情報を最新化する.
 */
exports.onWriteUser = functions
  .region(jpRegion)
  .firestore
  .document('users/{userId}')
  .onWrite(async (event, context) => {
    // db.onDocumentWritten('users/{userId}', async (event) => {
    const getUniqueElementsInSource = (source, target) => {
      const set2 = new Set(target);
      return source.filter((element) => !set2.has(element));
    };

    const onGroupSet = async (before, after) => {
      // グループから脱退している場合は、脱退したグループの情報を削除する
      removeBeforeGroup(before, after);

      // 登録 or 更新時は変更後の内容を所属しているグループへ反映する
      const user = after.data();
      if (user.joinGroupIds == null) {
        console.log('Empty joinGroupIds');
        return;
      }

      for (const groupId of user.joinGroupIds) {
        console.log('Update from GroupId: ${groupId}');
        const groupRef = db.collection(GROUPS_PATH).doc(groupId);
        const userRef = groupRef.collection(PARTICIPANTS_PATH).doc(user.id);
        await userRef.set(user);
      }
    };

    const onGroupDelete = async (before) => {
      // 削除されたユーザーが参加していたグループ内の情報を削除する
      const user = before.data();
      if (user.joinGroupIds == null || user.joinGroupIds.length === 0) {
        return;
      }

      for (const groupId of user.joinGroupIds) {
        const groupRef = db.collection(GROUPS_PATH).doc(groupId);
        const userRef = groupRef.collection(PARTICIPANTS_PATH).doc(user.id);
        await userRef.delete();
      }
    };

    const removeBeforeGroup = async (before, after) => {
      // 前回の情報が存在しない場合はスキップ
      if (!before.exists ||
        before.data().joinGroupIds == after.data().joinGroupIds) {
        return;
      }

      // 脱退したグループのグループIDを取得する
      const b4JoinGroupIds = before.data().joinGroupIds;
      const afJoinGroupIds = after.data().joinGroupIds;
      const leavedJoinGroupIds =
        getUniqueElementsInSource(b4JoinGroupIds, afJoinGroupIds);
      console.log('LeavedJoinGroupIds is ${leavedJoinGroupIds}');

      // 脱退したグループが存在しない場合はスキップ
      if (leavedJoinGroupIds == null || leavedJoinGroupIds.length === 0) {
        return;
      }

      // 脱退したグループの参加者情報を削除する
      const userId = after.data().id;
      for (const groupId of leavedJoinGroupIds) {
        console.log('Leave from GroupId: ${groupId}');
        const groupRef = db.collection(GROUPS_PATH).doc(groupId);
        const userRef = groupRef.collection(PARTICIPANTS_PATH).doc(userId);
        await userRef.delete();
      }
    };

    // 判定
    const eventType = !event.before.exists ?
      'create' :
      event.after.exists ?
        'update' :
        'delete';
    console.log(eventType);

    switch (eventType) {
    case 'create':
    case 'update': {
      onGroupSet(event.before, event.after);
      break;
    }
    case 'delete':
      onGroupDelete(event.before);
      break;
    default:
    // do nothing
    }
  });
