import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infrastructure_firebase/src/common/enum/firestore_columns.dart';
import 'package:infrastructure_firebase/src/common/extension/collection_reference.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/item/model/firestore_purchase_model.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore_child_view_purchase_provider.g.dart';

/// (子供参照用)購入情報コレクションの参照
@riverpod
CollectionReference<FirestorePurchaseModel> cpurchaseCollectionRef(
  Ref ref, {
  required GroupId groupId,
}) {
  return ref
      .watch(firestoreProvider)
      .cpurchasesRef(groupId)
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

/// (子供参照用)購入情報ドキュメントの参照
@riverpod
DocumentReference<FirestorePurchaseModel> cpurchaseDocumentRef(
  Ref ref, {
  required GroupId groupId,
  PurchaseId? purchaseId,
}) => ref
    .watch(cpurchaseCollectionRefProvider(groupId: groupId))
    .doc(purchaseId?.value);
