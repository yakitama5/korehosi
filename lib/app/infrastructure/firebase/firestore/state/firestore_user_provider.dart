import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firestore/extension/collection_reference.dart';
import '../constants/columns.dart';
import '../model/firestore_user_model.dart';
import 'firestore.dart';

part 'firestore_user_provider.g.dart';

/// ユーザーコレクションの参照
@riverpod
CollectionReference<FirestoreUserModel> userCollectionRef(
  UserCollectionRefRef ref,
) {
  return ref.watch(firestoreProvider).usersRef().withConverter(
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

/// ユーザードキュメントの参照
@riverpod
DocumentReference<FirestoreUserModel> userDocumentRef(
  UserDocumentRefRef ref, {
  String? userId,
}) =>
    ref.watch(userCollectionRefProvider).doc(userId);
