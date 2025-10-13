import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infrastructure_firebase/src/common/enum/firestore_columns.dart';
import 'package:infrastructure_firebase/src/common/extension/collection_reference.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/user/model/firestore_user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore_user_provider.g.dart';

/// ユーザーコレクションの参照
@riverpod
CollectionReference<FirestoreUserModel> userCollectionRef(Ref ref) {
  return ref
      .watch(firestoreProvider)
      .usersRef()
      .withConverter(
        fromFirestore: (snapshot, options) =>
            FirestoreUserModel.fromJson(snapshot.data()!),
        toFirestore: (value, options) => {
          ...value.toJson(),

          // 日付項目は自動更新
          FirestoreColumns.updatedAt.fieldName: FieldValue.serverTimestamp(),
          if (value.createdAt == null)
            FirestoreColumns.createdAt.fieldName: FieldValue.serverTimestamp(),
        },
      );
}

/// ユーザードキュメントの参照
@riverpod
DocumentReference<FirestoreUserModel> userDocumentRef(
  Ref ref, {
  String? userId,
}) => ref.watch(userCollectionRefProvider).doc(userId);
