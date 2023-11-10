import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firestore/extension/collection_reference.dart';
import '../constants/columns.dart';
import '../model/firestore_item_model.dart';
import 'firestore.dart';

part 'firestore_deleted_item_provider.g.dart';

/// 削除済欲しい物コレクションの参照
@riverpod
CollectionReference<FirestoreItemModel> ditemCollectionRef(
  DitemCollectionRefRef ref, {
  required String groupId,
}) {
  return ref.watch(firestoreProvider).ditemsRef(groupId).withConverter(
        fromFirestore: (snapshot, options) =>
            FirestoreItemModel.fromJson(snapshot.data()!),
        toFirestore: (value, options) => {
          ...value.toJson(),

          // 日付項目は自動更新
          firestoreColumnUpdatedAt: FieldValue.serverTimestamp(),
          if (value.createdAt == null)
            firestoreColumnCreatedAt: FieldValue.serverTimestamp(),
        },
      );
}

/// 欲しい物ドキュメントの参照
@riverpod
DocumentReference<FirestoreItemModel> ditemDocumentRef(
  DitemDocumentRefRef ref, {
  required String groupId,
  String? itemId,
}) =>
    ref.watch(ditemCollectionRefProvider(groupId: groupId)).doc(itemId);
