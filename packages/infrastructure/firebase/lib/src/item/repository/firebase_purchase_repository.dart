import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/item/model/firestore_purchase_model.dart';
import 'package:infrastructure_firebase/src/item/state/firestore_item_provider.dart';
import 'package:infrastructure_firebase/src/item/state/firestore_purchase_provider.dart';
import 'package:packages_domain/common.dart';
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
    // 更新対象の欲しいものの存在チェック
    final itemDocRef = ref.watch(
      itemDocumentRefProvider(groupId: groupId, itemId: itemId),
    );
    final itemSnap = await itemDocRef.get();
    if (!itemSnap.exists) {
      throw const BusinessException(BusinessExceptionType.updateTargetNotFound);
    }

    // `Purchase`は`Item`と同ID形態を利用する
    final purchaseId = PurchaseId(itemId.value);

    // 新しいドキュメントを取得
    final purchaseDocRef = ref.read(
      purchaseDocumentRefProvider(groupId: groupId, purchaseId: purchaseId),
    );

    // Firestore用のモデルに変換
    final purchase = FirestorePurchaseModel(
      id: purchaseDocRef.id,
      memo: memo,
      surprise: surprise,
      uid: userId.value,
      buyerName: buyerName,
      planDate: planDate,
      price: price,
      sentAt: sentAt,
    );

    // 購入状況取得
    final purchaseStatus = purchase
        .purchaseStatus(ageGroup: AgeGroup.adult)
        .name;
    final childViewPurchaseStatus = purchase
        .purchaseStatus(ageGroup: AgeGroup.child)
        .name;

    return ref.watch(firestoreProvider).runTransaction((transaction) async {
      // 購入状況の登録
      transaction.set(purchaseDocRef, purchase)
      // 欲しいものドキュメントの購入状況を同時に更新する
      .update(itemDocRef, {
        'purchaseStatus': purchaseStatus,
        'childViewPurchaseStatus': childViewPurchaseStatus,
      });
    });
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
  }) async {
    // `Purchase`は`Item`と同ID形態を利用する
    final purchaseId = PurchaseId(itemId.value);

    // 更新対象の存在チェック
    final itemDocRef = ref.watch(
      itemDocumentRefProvider(groupId: groupId, itemId: itemId),
    );
    final purchaseDocRef = ref.read(
      purchaseDocumentRefProvider(groupId: groupId, purchaseId: purchaseId),
    );
    final itemSnap = await itemDocRef.get();
    final purchaseSnap = await purchaseDocRef.get();
    if (!itemSnap.exists || !purchaseSnap.exists) {
      throw const BusinessException(BusinessExceptionType.updateTargetNotFound);
    }

    // Firestore用のモデルに変換
    final purchase = FirestorePurchaseModel(
      id: purchaseId.value,
      memo: memo,
      surprise: surprise,
      uid: userId.value,
      buyerName: buyerName,
      planDate: planDate,
      price: price,
      sentAt: sentAt,
    );

    // 購入状況取得
    final purchaseStatus = purchase
        .purchaseStatus(ageGroup: AgeGroup.adult)
        .name;
    final childViewPurchaseStatus = purchase
        .purchaseStatus(ageGroup: AgeGroup.child)
        .name;

    return ref.watch(firestoreProvider).runTransaction((transaction) async {
      // 購入状況の登録
      transaction.set(purchaseDocRef, purchase)
      // 欲しいものドキュメントの購入状況を同時に更新する
      .update(itemDocRef, {
        'purchaseStatus': purchaseStatus,
        'childViewPurchaseStatus': childViewPurchaseStatus,
      });
    });
  }

  @override
  Future<void> delete({
    required GroupId groupId,
    required ItemId itemId,
  }) async {
    final firestore = ref.read(firestoreProvider);
    await firestore.runTransaction((transaction) async {
      final itemDocRef = ref.watch(
        itemDocumentRefProvider(groupId: groupId, itemId: itemId),
      );
      // Itemコレクションと同一IDを利用
      final purchaseId = PurchaseId(itemId.value);
      final purchaseDocRef = ref.read(
        purchaseDocumentRefProvider(groupId: groupId, purchaseId: purchaseId),
      );

      transaction
          // ドキュメントの削除
          .delete(purchaseDocRef)
          // 購入状況の更新
          .update(itemDocRef, {
            'purchaseStatus': PurchaseStatus.notPurchased.name,
            'childViewPurchaseStatus': PurchaseStatus.notPurchased.name,
          });
    });
  }
}
