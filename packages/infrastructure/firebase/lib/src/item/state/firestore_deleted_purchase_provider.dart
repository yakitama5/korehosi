import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:infrastructure_firebase/src/common/enum/firestore_columns.dart';
import 'package:infrastructure_firebase/src/common/extension/collection_reference.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/item/model/firestore_purchase_model.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore_deleted_purchase_provider.g.dart';

/// 削除済購入情報コレクションの参照
@riverpod
CollectionReference<FirestorePurchaseModel> dpurchaseCollectionRef(
  Ref ref, {
  required GroupId groupId,
}) {
  return ref
      .watch(firestoreProvider)
      .dpurchasesRef(groupId)
      .withConverter(
        fromFirestore: (snapshot, options) =>
            FirestorePurchaseModel.fromJson(snapshot.data()!),
        toFirestore: (value, options) => {
          ...value.toJson(),

          // 日付項目は自動更新
          FirestoreColumns.updatedAt.fieldName: FieldValue.serverTimestamp(),
          if (value.createdAt == null)
            FirestoreColumns.createdAt.fieldName: FieldValue.serverTimestamp(),
        },
      );
}

/// 購入情報ドキュメントの参照
@riverpod
DocumentReference<FirestorePurchaseModel> dpurchaseDocumentRef(
  Ref ref, {
  required GroupId groupId,
  PurchaseId? purchaseId,
}) => ref
    .watch(dpurchaseCollectionRefProvider(groupId: groupId))
    .doc(purchaseId?.value);
