import 'package:cores_domain/item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../firestore/model/firestore_purchase_model.dart';
import '../firestore/state/firestore.dart';
import '../firestore/state/firestore_child_view_purchase_provider.dart';
import '../firestore/state/firestore_deleted_purchase_provider.dart';
import '../firestore/state/firestore_purchase_provider.dart';

/// Firebaseを利用したリポジトリの実装
class FirebasePurchaseRepository implements PurchaseRepository {
  const FirebasePurchaseRepository(this.ref);

  final Ref ref;

  @override
  Stream<Purchase?> fetchByItemId({
    required String groupId,
    required String itemId,
  }) {
    return ref
        .read(purchaseDocumentRefProvider(groupId: groupId, purchaseId: itemId))
        .snapshots()
        .where((s) {
          // 読み込み中のドキュメントが存在する場合はスキップ
          final doc = s.data();
          return doc == null || !doc.fieldValuePending;
        })
        .map((snap) => snap.data()?.toDomainModel());
  }

  @override
  Stream<Purchase?> fetchByItemIdForChild({
    required String groupId,
    required String itemId,
  }) {
    return ref
        .read(
          cpurchaseDocumentRefProvider(groupId: groupId, purchaseId: itemId),
        )
        .snapshots()
        .where((s) {
          // 読み込み中のドキュメントが存在する場合はスキップ
          final doc = s.data();
          return doc == null || !doc.fieldValuePending;
        })
        .map((snap) => snap.data()?.toDomainModel());
  }

  @override
  Future<void> add({
    required String groupId,
    required String itemId,
    int? price,
    String? buyerName,
    DateTime? planDate,
    required bool surprise,
    DateTime? sentAt,
    String? memo,
    required String uid,
  }) async {
    // 新しいドキュメントを取得
    final docRef = ref.read(
      purchaseDocumentRefProvider(groupId: groupId, purchaseId: itemId),
    );

    // Firestore用のモデルに変換
    final docModel = FirestorePurchaseModel(
      id: docRef.id,
      memo: memo,
      surprise: surprise,
      uid: uid,
      buyerName: buyerName,
      planDate: planDate,
      price: price,
      sentAt: sentAt,
    );

    // 登録
    await docRef.set(docModel);
  }

  @override
  Future<void> update({
    required String groupId,
    required String purchaseId,
    int? price,
    String? buyerName,
    DateTime? planDate,
    required bool surprise,
    DateTime? sentAt,
    String? memo,
    required String uid,
  }) {
    // Firestore用のモデルに変換
    final docModel = FirestorePurchaseModel(
      id: purchaseId,
      memo: memo,
      surprise: surprise,
      uid: uid,
      buyerName: buyerName,
      planDate: planDate,
      price: price,
      sentAt: sentAt,
    );

    // 登録
    return ref
        .read(
          purchaseDocumentRefProvider(groupId: groupId, purchaseId: purchaseId),
        )
        .set(docModel);
  }

  @override
  Future<void> delete({
    required String groupId,
    required String purchaseId,
  }) async {
    final firestore = ref.read(firestoreProvider);
    await firestore.runTransaction((transaction) async {
      // 削除前の状態を保持
      final docRef = ref.read(
        purchaseDocumentRefProvider(groupId: groupId, purchaseId: purchaseId),
      );
      final delDocRef = ref.read(
        dpurchaseDocumentRefProvider(groupId: groupId, purchaseId: purchaseId),
      );
      final doc = await transaction.get(docRef);

      transaction
          // ドキュメントの削除
          .delete(docRef)
          // 削除用ドキュメントの追加
          .set<FirestorePurchaseModel>(delDocRef, doc.data()!);
    });
  }
}
