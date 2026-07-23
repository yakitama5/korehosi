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
  warn,
} = require('firebase-functions/logger');
const {
  onSchedule,
} = require('firebase-functions/scheduler');
const {
  getChildPurchaseStatus,
  getPurchaseStatus,
} = require('./src/purchase-status');
const {createJoinGroupHandler} = require('./src/join-group');
const {createUserSyncHandler} = require('./src/user-sync');
const {createMessageHandler} = require('./src/notifications');
const {createSuggestionHandler} = require('./src/name-suggestions');
const {createWishReminderHandler} = require('./src/wish-reminder');
const {
  createDeleteUserHandler,
  createRetryUserDeletionsHandler,
} = require('./src/delete-user');
const {createItemWriteHandler} = require('./src/item-write');

admin.initializeApp();
const tokyoTimeZone = 'Asia/Tokyo';

// コレクションパス
const GROUPS_PATH = 'groups';

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
const logger = {log, error, warn};

const joinGroup = createJoinGroupHandler({
  db,
  remoteConfig,
  fieldValue: admin.firestore.FieldValue,
});
const syncUser = createUserSyncHandler({db, logger});
const sendMessageNotifications = createMessageHandler({
  db,
  messaging: admin.messaging(),
  logger,
});
const updateBuyerSuggestion = createSuggestionHandler({
  db,
  collectionName: 'buyerNames',
  fieldName: 'buyerName',
});
const updateWanterSuggestion = createSuggestionHandler({
  db,
  collectionName: 'wanterNames',
  fieldName: 'wanterName',
});
const handleItemWrite = createItemWriteHandler({
  db,
  updateSuggestion: updateWanterSuggestion,
});
const sendWishDateReminders = createWishReminderHandler({
  db,
  messaging: admin.messaging(),
  logger,
});
const deleteUser = createDeleteUserHandler({db, auth: admin.auth()});
const retryUserDeletions = createRetryUserDeletionsHandler({
  db,
  auth: admin.auth(),
  logger,
});

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
  joinGroup,
);

/**
 * 【呼び出し】
 * 認証済みユーザー本人のデータと認証情報を削除する.
 */
exports.v2DeleteUser = onCall(
  {
    enforceAppCheck: true,
  },
  deleteUser,
);

/** Completes Authentication deletions left pending by transient failures. */
exports.scheduledRetryUserDeletions = onSchedule(
  'every 15 minutes',
  retryUserDeletions,
);


/**
 * 【監視処理】
 * ユーザー情報が変更された場合にグループ内情報へ反映させる.
 */
exports.v2OnWriteUser = onDocumentWritten(
  'users/{userId}',
  syncUser,
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
  sendMessageNotifications,
);

/**
 * 【監視処理】
 * 購入情報が変更された場合にグループ内情報のサジェストへ反映させる.
 */
exports.onWritePurchase = onDocumentWritten(
  'groups/{groupId}/purchases/{purchaseId}',
  updateBuyerSuggestion,
);

/**
 * 【監視処理】
 * ほしいものが変更された場合にグループ内情報のサジェストへ反映させる.
 */
exports.onWriteItem = onDocumentWritten(
  'groups/{groupId}/items/{itemId}',
  handleItemWrite,
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

        log(`"groups/${groupId}/purchases/${itemId}"のドキュメントを処理します。`);

        // 3. 対応する purchases ドキュメントを取得
        // コレクションパス: groups/{groupId}/purchases/{itemsId}
        const purchaseRef = db.doc(`groups/${groupId}/purchases/${itemId}`);
        const purchaseDoc = await purchaseRef.get();

        // 購入状況を取得
        const purchaseStatus = getPurchaseStatus(purchaseDoc);
        const childViewPurchaseStatus =
          getChildPurchaseStatus(purchaseDoc, purchaseStatus);

        log(`purchaseStatus is ${purchaseStatus}`);
        log(`childViewPurchaseStatus is ${childViewPurchaseStatus}`);

        // 4. バッチに更新操作を追加
        currentBatch.update(itemRef, {
          'purchaseStatus': purchaseStatus,
          'childViewPurchaseStatus': childViewPurchaseStatus,
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
 * Opt-inしたユーザーへ、ほしい日のリマインダーを重複なく配信する。
 */
exports.scheduledWishDateReminders = onSchedule(
  {
    schedule: 'every 1 hours',
    timeZone: tokyoTimeZone,
  },
  sendWishDateReminders,
);
