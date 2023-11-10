import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firestore/extension/collection_reference.dart';
import '../constants/columns.dart';
import '../model/firestore_purchase_model.dart';
import 'firestore.dart';

part 'firestore_purchase_provider.g.dart';

/// 購入情報コレクションの参照
@riverpod
CollectionReference<FirestorePurchaseModel> purchaseCollectionRef(
  PurchaseCollectionRefRef ref, {
  required String groupId,
}) {
  return ref.watch(firestoreProvider).purchasesRef(groupId).withConverter(
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
DocumentReference<FirestorePurchaseModel> purchaseDocumentRef(
  PurchaseDocumentRefRef ref, {
  required String groupId,
  String? purchaseId,
}) =>
    ref.watch(purchaseCollectionRefProvider(groupId: groupId)).doc(purchaseId);
