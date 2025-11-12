const admin = require('firebase-admin');
const {
  setGlobalOptions,
} = require('firebase-functions/v2');
const {
  onCall,
} = require('firebase-functions/v2/https');
const {
  onDocumentWritten,
  onDocumentDeleted,
  onDocumentCreated,
} = require('firebase-functions/v2/firestore');
const {
  log,
  error,
} = require('firebase-functions/logger');
const {
  onSchedule,
} = require('firebase-functions/scheduler');

admin.initializeApp();
const tokyoTimeZone = 'Asia/Tokyo';

// コレクションパス
const GROUPS_PATH = 'groups';
const PARTICIPANTS_PATH = 'participants';
const USERS_PATH = 'users';
const TOKENS_PATH = 'fcmTokens';

// 購入状況
const NOT_PURCHASED = 'notPurchased';
const PURCHASE_PLAN = 'purchasePlan;';
const PURCHASED = 'purchased';

// Firestoreのバッチ書き込みの最大操作数 (上限は500)
const BATCH_SIZE = 499;

// 処理内のTimeZone指定
process.env.TZ = tokyoTimeZone;

// グローバルオプションの設定
setGlobalOptions({
  region: 'asia-northeast1',
});

const db = admin.firestore();
const remoteConfig = admin.remoteConfig();

// Create and Deploy Your First Cloud Functions
// https://firebase.google.com/docs/functions/write-firebase-functions

/**
 * 【呼び出し】
 * グループへの参加
 */
exports.v2JoinGroup = onCall(
  {
    enforceAppCheck: true,
  },
  async (request) => {
    // 認証済か否か
    const uid = request.auth.uid;
    const user = await admin.auth().getUser(uid);
    if (!user) {
      return {
        'errorCode': 'not-auth',
      };
    }

    // パラメタが設定されているか
    const shareLinkId = request.data.shareLinkId;
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
    const groupSnap = await db.collection(GROUPS_PATH)
      .doc(linkData.groupId).get();
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

    const userRef = db.collection(USERS_PATH).doc(user.uid);
    const userDoc = await userRef.get();
    const joinGroupIds = userDoc.data().joinGroupIds;
    if (joinGroupIds.length >= maxGroup) {
      return {
        'errorCode': 'over-count',
      };
    }

    // グループ および ユーザー情報の取得
    const groupRef = db.collection(GROUPS_PATH).doc(linkData.groupId);
    db.runTransaction(async (t) => {
      t.update(groupRef, {
        'joinUids': admin.firestore.FieldValue.arrayUnion(user.uid),
      }).update(userRef, {
        'joinGroupIds': admin.firestore.FieldValue.arrayUnion(linkData.groupId),
      });
    });

    return {};
  },
);


/**
 * 【監視処理】
 * ユーザー情報が変更された場合にグループ内情報へ反映させる.
 */
exports.v2OnWriteUser = onDocumentWritten(
  'users/{userId}',
  async (event) => {
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
        log('Empty joinGroupIds');
        return;
      }

      for (const groupId of user.joinGroupIds) {
        log(`Update from GroupId: ${groupId}`);
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
      // 前回の情報が存在しない、またはjoinGroupIdsに変更がない場合はスキップ
      if (!before.exists ||
        before.data().joinGroupIds == after.data().joinGroupIds) {
        return;
      }

      // 脱退したグループのグループIDを取得する
      const b4JoinGroupIds = before.data().joinGroupIds;
      const afJoinGroupIds = after.data().joinGroupIds;
      const leavedJoinGroupIds =
        getUniqueElementsInSource(b4JoinGroupIds, afJoinGroupIds);
      log(`LeavedJoinGroupIds is ${leavedJoinGroupIds}`);

      // 脱退したグループが存在しない場合はスキップ
      if (leavedJoinGroupIds == null || leavedJoinGroupIds.length === 0) {
        return;
      }

      // 脱退したグループの参加者情報を削除する
      const userId = after.data().id;
      for (const groupId of leavedJoinGroupIds) {
        log(`Leave from GroupId: ${groupId}`);
        const groupRef = db.collection(GROUPS_PATH).doc(groupId);
        const userRef = groupRef.collection(PARTICIPANTS_PATH).doc(userId);
        await userRef.delete();
      }
    };

    const toEventType = (event) => {
      if (!event.data.before.exists) {
        return 'create';
      } else if (event.data.after.exists) {
        return 'update';
      } else {
        return 'delete';
      }
    };

    // 判定
    const eventType = toEventType(event);
    log(eventType);

    switch (eventType) {
    case 'create':
    case 'update':
      onGroupSet(event.data.before, event.data.after);
      break;
    case 'delete':
      onGroupDelete(event.data.before);
      break;
    default:
    // do nothing
    }
  },
);

/**
 * 【監視処理】
 * グループが削除された場合にグループ配下の情報を削除する.
 */
exports.v2OnDeleteGroup = onDocumentDeleted(
  'groups/{groupId}',
  async (event) => {
    try {
      // 対象グループのパスを取得
      const groupId = event.data.data().id;
      const groupRef = db.collection(GROUPS_PATH).doc(groupId);

      // 配下のサブコレクションを再帰的に削除する
      await db.recursiveDelete(groupRef);
      log('Recursive deleted.');
    } catch (err) {
      error('Error deleting collection and subcollection:', err);
    }
  },
);

/**
 * 【監視処理】
 * 通知メッセージが登録された場合、プッシュ通知を送る.
 */
exports.v2OnCreateMessage = onDocumentCreated(
  'groups/{groupId}/messages/{messageId}',
  async (event) => {
    // グループ内のユーザー一覧を取得する
    const groupRef = db.collection(GROUPS_PATH).doc(event.params.groupId);
    const groupSnap = await groupRef.get();
    const groupData = groupSnap.data();
    const joinUids = groupData.joinUids;
    for (const userId of joinUids) {
      // ユーザーが通知対象でなければリトライ
      const userRef = groupRef.collection(PARTICIPANTS_PATH).doc(userId);
      const userSnap = await userRef.get();
      const user = userSnap.data();
      const target = event.data.data().target;

      const messageData = event.data.data();
      const isMyOperation = user.id == messageData.uid;
      const isTargetGroup = target == 'all' || target == user.ageGroup;
      if (isMyOperation || !isTargetGroup) {
        continue;
      }

      // トークンを取得して通知を投げる
      const tokensRef = db.collection(USERS_PATH).doc(user.id)
        .collection(TOKENS_PATH);
      const tokensSnap = await tokensRef.get();
      if (tokensSnap.empty) {
        continue;
      }

      tokensSnap.docs.forEach((doc) => {
        const token = doc.data().token;

        // 通知の内容を作る処理
        if (token != null) {
          const message = {
            notification: {
              title: messageData.title,
              body: messageData.body,
            },
            data: {
              path: messageData.path,
            },
            android: {
              notification: {
                sound: 'default',
                click_action: messageData.event,
              },
            },
            apns: {
              payload: {
                aps: {
                  badge: 0,
                  sound: 'default',
                },
              },
            },
            token: token,
          };

          pushToDevice(token, message);
        }
      });
    }
  },
);

/**
 * FirestoreのitemsコレクションのpurchaseStatusフィールドを一括更新するスケジュール関数
 * 毎日0時0分に実行されます。
 * * ⚠️ Cron式のタイムゾーンに注意してください。
 * FirebaseのデフォルトではUTCですが、デプロイ時にタイムゾーンを設定できます。
 * (例: .timeZone('Asia/Tokyo'))
 */
exports.scheduledBatchUpdatePurchaseStatus =
  onSchedule('every day 00:00', async (event) => {
    try {
      log('--- スケジュールされた一括更新を開始します ---');

      // 1. すべての 'items' コレクションのドキュメントを取得
      // Collection Group Query を使用 (要インデックス設定)
      const itemsSnapshot = await db.collectionGroup('items').get();
      const itemDocs = itemsSnapshot.docs;

      if (itemDocs.length === 0) {
        log('更新対象のitemsドキュメントが見つかりませんでした。');
        return null;
      }

      log(`合計 ${itemDocs.length} 件のitemsドキュメントを処理します。`);

      let updatedCount = 0;
      let batchCount = 0;
      let currentBatch = db.batch();

      // 2. ドキュメントをチャンクに分けて処理
      for (let i = 0; i < itemDocs.length; i++) {
        const itemDoc = itemDocs[i];

        // itemsドキュメントの参照とIDを取得
        const itemRef = itemDoc.ref;
        // itemRef.parent -> itemsコレクション参照
        // itemRef.parent.parent -> groups/{groupId}ドキュメント参照
        const groupId = itemRef.parent.parent.id;
        const itemId = itemRef.id;

        // 3. 対応する purchases ドキュメントを取得
        // コレクションパス: groups/{groupId}/purchases/{itemsId}
        const purchaseRef = db.doc(`groups/${groupId}/purchases/${itemId}`);
        const purchaseDoc = await purchaseRef.get();

        // 購入状況を取得
        const purchaseStatus = getPurchaseStatus(purchaseDoc);

        // 4. バッチに更新操作を追加
        currentBatch.update(itemRef, {
          'purchaseStatus': purchaseStatus,
        });
        batchCount++;

        // 5. バッチサイズの上限に達したらコミットし、新しいバッチを開始
        if (batchCount === BATCH_SIZE || i === itemDocs.length - 1) {
          await currentBatch.commit();
          updatedCount += batchCount;
          log(`✅ ${updatedCount} 件までバッチコミットが完了しました。`);

          // 最後のコミットでなければ、新しいバッチを準備
          if (i !== itemDocs.length - 1) {
            currentBatch = db.batch();
            batchCount = 0;
          }
        }
      }

      // スケジュール関数は Promise を解決して終了
      log(`--- すべての更新が完了しました。合計 ${updatedCount} 件のドキュメントを更新 ---`);
      return null;
    } catch (err) {
      error('致命的なエラーが発生しました:', err);
      // エラーが発生した場合も、処理を終了するためにnullを返す
      return null;
    }
  });

/**
 * 通知処理
 * @param {String} token FCMトークン
 * @param {Object} payload 通知ペイロード
 */
function pushToDevice(token, payload) {
  admin.messaging().send(payload)
    .then((pushResponse) => {
      return {
        text: token,
      };
    })
    .catch((err) => {
      // HttpsErrorはv1の遺物なので、一般的なErrorをthrowするか、ロギングに留めます。
      error('Failed to send push notification:', err);
    });
}

/**
 * 購入状況を取得する.
 * @param {DocumentSnapshot} purchaseDoc 購入状況のドキュメントスナップショット
 * @return {String} 購入状況
 */
function getPurchaseStatus(purchaseDoc) {
  if (purchaseDoc.exists) {
    return NOT_PURCHASED;
  } else if (purchaseDoc.data.sentAt != null) {
    return PURCHASED;
  } else if (purchaseDoc.data.planDate != null) {
    return PURCHASE_PLAN;
  } else {
    return NOT_PURCHASED;
  }
}
