import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firestore/extension/collection_reference.dart';
import '../constants/columns.dart';
import '../model/firestore_user_model.dart';
import 'firestore.dart';

part 'firestore_deleted_user_provider.g.dart';

/// 削除済ユーザーコレクションの参照
@riverpod
CollectionReference<FirestoreUserModel> duserCollectionRef(
  DuserCollectionRefRef ref,
) {
  return ref.watch(firestoreProvider).dusersRef().withConverter(
        fromFirestore: (snapshot, options) =>
            FirestoreUserModel.fromJson(snapshot.data()!),
        toFirestore: (value, options) => {
          ...value.toJson(),

          // 日付項目は自動更新
          firestoreColumnUpdatedAt: FieldValue.serverTimestamp(),
          if (value.createdAt == null)
            firestoreColumnCreatedAt: FieldValue.serverTimestamp(),
        },
      );
}

/// 削除済ユーザードキュメントの参照
@riverpod
DocumentReference<FirestoreUserModel> duserDocumentRef(
  DuserDocumentRefRef ref, {
  String? userId,
}) =>
    ref.watch(duserCollectionRefProvider).doc(userId);
