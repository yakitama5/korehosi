import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firestore/extension/collection_reference.dart';
import '../constants/columns.dart';
import '../model/firestore_purchase_model.dart';
import 'firestore.dart';

part 'firestore_child_view_purchase_provider.g.dart';

/// (子供参照用)購入情報コレクションの参照
@riverpod
CollectionReference<FirestorePurchaseModel> cpurchaseCollectionRef(
  CpurchaseCollectionRefRef ref, {
  required String groupId,
}) {
  return ref.watch(firestoreProvider).cpurchasesRef(groupId).withConverter(
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

/// (子供参照用)購入情報ドキュメントの参照
@riverpod
DocumentReference<FirestorePurchaseModel> cpurchaseDocumentRef(
  CpurchaseDocumentRefRef ref, {
  required String groupId,
  String? purchaseId,
}) =>
    ref.watch(cpurchaseCollectionRefProvider(groupId: groupId)).doc(purchaseId);
