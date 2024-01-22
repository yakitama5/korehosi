import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firestore/extension/collection_reference.dart';
import '../constants/columns.dart';
import '../model/firestore_notification_message_model.dart';
import 'firestore.dart';

part 'firestore_deleted_notification_message_provider.g.dart';

/// 削除済通知メッセージコレクションの参照
@riverpod
CollectionReference<FirestoreNotificationMessageModel>
    dnotificationMessageCollectionRef(
  DnotificationMessageCollectionRefRef ref, {
  required String groupId,
}) {
  return ref.watch(firestoreProvider).dmessagesRef(groupId).withConverter(
        fromFirestore: (snapshot, options) =>
            FirestoreNotificationMessageModel.fromJson(snapshot.data()!),
        toFirestore: (value, options) => {
          ...value.toJson(),

          // 日付項目は自動更新
          firestoreColumnUpdatedAt: FieldValue.serverTimestamp(),
          if (value.createdAt == null)
            firestoreColumnCreatedAt: FieldValue.serverTimestamp(),
        },
      );
}

/// 削除済通知メッセージドキュメントの参照
@riverpod
DocumentReference<FirestoreNotificationMessageModel>
    dnotificationMessageDocumentRef(
  DnotificationMessageDocumentRefRef ref, {
  required String groupId,
  String? dnotificationMessageId,
}) =>
        ref
            .watch(dnotificationMessageCollectionRefProvider(groupId: groupId))
            .doc(dnotificationMessageId);
