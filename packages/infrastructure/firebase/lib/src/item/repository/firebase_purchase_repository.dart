import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/item/model/firestore_purchase_model.dart';
import 'package:infrastructure_firebase/src/item/state/firestore_child_view_purchase_provider.dart';
import 'package:infrastructure_firebase/src/item/state/firestore_deleted_purchase_provider.dart';
import 'package:infrastructure_firebase/src/item/state/firestore_purchase_provider.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/item.dart';
import 'package:packages_domain/user.dart';

/// Firebaseを利用したリポジトリの実装
class FirebasePurchaseRepository implements PurchaseRepository {
  const FirebasePurchaseRepository(this.ref);

  final Ref ref;

  @override
  Future<Purchase?> fetchByItemId({
    required GroupId groupId,
    required ItemId itemId,
  }) {
    // `Purchase`は`Item`と同ID形態を利用する
    final purchaseId = PurchaseId(itemId.value);

    return ref
        .read(
          purchaseDocumentRefProvider(groupId: groupId, purchaseId: purchaseId),
        )
        .get()
        .then((snap) => snap.data()?.toDomainModel());
  }

  @override
  Future<Purchase?> fetchByItemIdForChild({
    required GroupId groupId,
    required ItemId itemId,
  }) {
    // `Purchase`は`Item`と同ID形態を利用する
    final purchaseId = PurchaseId(itemId.value);

    return ref
        .read(
          cpurchaseDocumentRefProvider(
            groupId: groupId,
            purchaseId: purchaseId,
          ),
        )
        .get()
        .then((snap) => snap.data()?.toDomainModel());
  }

  @override
  Future<void> add({
    required GroupId groupId,
    required ItemId itemId,
    int? price,
    String? buyerName,
    DateTime? planDate,
    required bool surprise,
    DateTime? sentAt,
    String? memo,
    required UserId userId,
  }) async {
    // `Purchase`は`Item`と同ID形態を利用する
    final purchaseId = PurchaseId(itemId.value);

    // 新しいドキュメントを取得
    final docRef = ref.read(
      purchaseDocumentRefProvider(groupId: groupId, purchaseId: purchaseId),
    );

    // Firestore用のモデルに変換
    final docModel = FirestorePurchaseModel(
      id: docRef.id,
      memo: memo,
      surprise: surprise,
      uid: userId.value,
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
    required GroupId groupId,
    required ItemId itemId,
    int? price,
    String? buyerName,
    DateTime? planDate,
    required bool surprise,
    DateTime? sentAt,
    String? memo,
    required UserId userId,
  }) {
    // Firestore用のモデルに変換
    final docModel = FirestorePurchaseModel(
      id: itemId.value,
      memo: memo,
      surprise: surprise,
      uid: userId.value,
      buyerName: buyerName,
      planDate: planDate,
      price: price,
      sentAt: sentAt,
    );

    // 登録 (Itemコレクションと同一IDを利用)
    final purchaseId = PurchaseId(itemId.value);
    return ref
        .read(
          purchaseDocumentRefProvider(groupId: groupId, purchaseId: purchaseId),
        )
        .set(docModel);
  }

  @override
  Future<void> delete({
    required GroupId groupId,
    required ItemId itemId,
  }) async {
    final firestore = ref.read(firestoreProvider);
    await firestore.runTransaction((transaction) async {
      // Itemコレクションと同一IDを利用
      final purchaseId = PurchaseId(itemId.value);
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

  @override
  Future<Purchase?> fetchByItemIdWithAgeGroup({
    required GroupId groupId,
    required ItemId itemId,
    required AgeGroup ageGroup,
  }) {
    switch (ageGroup) {
      case AgeGroup.child:
        return fetchByItemIdForChild(groupId: groupId, itemId: itemId);
      case AgeGroup.adult:
        return fetchByItemId(groupId: groupId, itemId: itemId);
    }
  }
}
