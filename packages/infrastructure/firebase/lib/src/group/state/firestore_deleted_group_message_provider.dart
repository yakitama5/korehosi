import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:infrastructure_firebase/src/common/enum/firestore_columns.dart';
import 'package:infrastructure_firebase/src/common/extension/collection_reference.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/group/model/firestore_group_message_model.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/notification.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore_deleted_group_message_provider.g.dart';

/// 削除済通知メッセージコレクションの参照
@riverpod
CollectionReference<FirestoreGroupMessageModel> dgroupMessageCollectionRef(
  Ref ref, {
  required GroupId groupId,
}) {
  return ref
      .watch(firestoreProvider)
      .dmessagesRef(groupId)
      .withConverter(
        fromFirestore: (snapshot, options) =>
            FirestoreGroupMessageModel.fromJson(snapshot.data()!),
        toFirestore: (value, options) => {
          ...value.toJson(),

          // 日付項目は自動更新
          FirestoreColumns.updatedAt.fieldName: FieldValue.serverTimestamp(),
          if (value.createdAt == null)
            FirestoreColumns.createdAt.fieldName: FieldValue.serverTimestamp(),
        },
      );
}

/// 削除済通知メッセージドキュメントの参照
@riverpod
DocumentReference<FirestoreGroupMessageModel> dgroupMessageDocumentRef(
  Ref ref, {
  required GroupId groupId,
  NotificationMessageId? dnotificationMessageId,
}) => ref
    .watch(dgroupMessageCollectionRefProvider(groupId: groupId))
    .doc(dnotificationMessageId?.value);
