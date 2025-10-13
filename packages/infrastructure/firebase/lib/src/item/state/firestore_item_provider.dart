import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infrastructure_firebase/src/common/enum/firestore_columns.dart';
import 'package:infrastructure_firebase/src/common/extension/collection_reference.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/item/model/firestore_item_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore_item_provider.g.dart';

/// 欲しい物コレクションの参照
@riverpod
CollectionReference<FirestoreItemModel> itemCollectionRef(
  Ref ref, {
  required String groupId,
}) {
  return ref
      .watch(firestoreProvider)
      .itemsRef(groupId)
      .withConverter(
        fromFirestore: (snapshot, options) =>
            FirestoreItemModel.fromJson(snapshot.data()!),
        toFirestore: (value, options) => {
          ...value.toJson(),

          // 日付項目は自動更新
          FirestoreColumns.updatedAt.fieldName: FieldValue.serverTimestamp(),
          if (value.createdAt == null)
            FirestoreColumns.createdAt.fieldName: FieldValue.serverTimestamp(),
        },
      );
}

/// 欲しい物ドキュメントの参照
@riverpod
DocumentReference<FirestoreItemModel> itemDocumentRef(
  Ref ref, {
  required String groupId,
  String? itemId,
}) => ref.watch(itemCollectionRefProvider(groupId: groupId)).doc(itemId);
