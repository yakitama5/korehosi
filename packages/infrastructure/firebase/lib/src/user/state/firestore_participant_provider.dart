import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:infrastructure_firebase/src/common/enum/firestore_columns.dart';
import 'package:infrastructure_firebase/src/common/extension/collection_reference.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/user/model/firestore_user_model.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore_participant_provider.g.dart';

/// グループ参加者コレクションの参照
@riverpod
CollectionReference<FirestoreUserModel> participantCollectionRef(
  Ref ref, {
  required GroupId groupId,
}) {
  return ref
      .watch(firestoreProvider)
      .participantsRef(groupId)
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

/// グループ参加者ドキュメントの参照
@riverpod
DocumentReference<FirestoreUserModel> participantDocumentRef(
  Ref ref, {
  required GroupId groupId,
  UserId? participantId,
}) => ref
    .watch(participantCollectionRefProvider(groupId: groupId))
    .doc(participantId?.value);
