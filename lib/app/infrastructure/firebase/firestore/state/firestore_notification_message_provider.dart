import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firestore/extension/collection_reference.dart';
import '../constants/columns.dart';
import '../model/firestore_notification_message_model.dart';
import 'firestore.dart';

part 'firestore_notification_message_provider.g.dart';

/// 通知メッセージコレクションの参照
@riverpod
CollectionReference<FirestoreNotificationMessageModel>
    notificationMessageCollectionRef(
  NotificationMessageCollectionRefRef ref, {
  required String groupId,
}) {
  return ref.watch(firestoreProvider).messagesRef(groupId).withConverter(
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

/// 通知メッセージドキュメントの参照
@riverpod
DocumentReference<FirestoreNotificationMessageModel>
    notificationMessageDocumentRef(
  NotificationMessageDocumentRefRef ref, {
  required String groupId,
  String? notificationMessageId,
}) =>
        ref
            .watch(notificationMessageCollectionRefProvider(groupId: groupId))
            .doc(notificationMessageId);
