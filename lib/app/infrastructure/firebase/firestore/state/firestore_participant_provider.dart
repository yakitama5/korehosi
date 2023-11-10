import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firestore/extension/collection_reference.dart';
import '../constants/columns.dart';
import '../model/firestore_user_model.dart';
import 'firestore.dart';

part 'firestore_participant_provider.g.dart';

/// グループ参加者コレクションの参照
@riverpod
CollectionReference<FirestoreUserModel> participantCollectionRef(
  ParticipantCollectionRefRef ref, {
  required String groupId,
}) {
  return ref.watch(firestoreProvider).participantsRef(groupId).withConverter(
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

/// グループ参加者ドキュメントの参照
@riverpod
DocumentReference<FirestoreUserModel> participantDocumentRef(
  ParticipantDocumentRefRef ref, {
  required String groupId,
  String? participantId,
}) =>
    ref
        .watch(participantCollectionRefProvider(groupId: groupId))
        .doc(participantId);
