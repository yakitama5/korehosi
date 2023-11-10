import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firestore/extension/collection_reference.dart';
import '../constants/columns.dart';
import '../model/firestore_purchase_model.dart';
import 'firestore.dart';

part 'firestore_deleted_purchase_provider.g.dart';

/// 削除済購入情報コレクションの参照
@riverpod
CollectionReference<FirestorePurchaseModel> dpurchaseCollectionRef(
  DpurchaseCollectionRefRef ref, {
  required String groupId,
}) {
  return ref.watch(firestoreProvider).dpurchasesRef(groupId).withConverter(
        fromFirestore: (snapshot, options) =>
            FirestorePurchaseModel.fromJson(snapshot.data()!),
        toFirestore: (value, options) => {
          ...value.toJson(),

          // 日付項目は自動更新
          firestoreColumnUpdatedAt: FieldValue.serverTimestamp(),
          if (value.createdAt == null)
            firestoreColumnCreatedAt: FieldValue.serverTimestamp(),
        },
      );
}

/// 購入情報ドキュメントの参照
@riverpod
DocumentReference<FirestorePurchaseModel> dpurchaseDocumentRef(
  DpurchaseDocumentRefRef ref, {
  required String groupId,
  String? purchaseId,
}) =>
    ref.watch(dpurchaseCollectionRefProvider(groupId: groupId)).doc(purchaseId);
