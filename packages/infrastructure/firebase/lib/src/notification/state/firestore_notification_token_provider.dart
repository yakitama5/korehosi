import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:infrastructure_firebase/src/common/enum/firestore_columns.dart';
import 'package:infrastructure_firebase/src/common/extension/collection_reference.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/notification/model/firestore_notification_token_model.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firestore_notification_token_provider.g.dart';

/// 通知FCMトークンコレクションの参照
@riverpod
CollectionReference<FirestoreNotificationTokenModel>
notificationTokenCollectionRef(Ref ref, {required UserId userId}) {
  return ref
      .watch(firestoreProvider)
      .fcmTokensRef(userId)
      .withConverter(
        fromFirestore: (snapshot, options) =>
            FirestoreNotificationTokenModel.fromJson(snapshot.data()!),
        toFirestore: (value, options) => {
          ...value.toJson(),

          // 日付項目は自動更新
          FirestoreColumns.updatedAt.fieldName: FieldValue.serverTimestamp(),
          if (value.createdAt == null)
            FirestoreColumns.createdAt.fieldName: FieldValue.serverTimestamp(),
        },
      );
}

/// 通知FCMトークンドキュメントの参照
@riverpod
DocumentReference<FirestoreNotificationTokenModel> notificationTokenDocumentRef(
  Ref ref, {
  required UserId userId,
  String? token,
}) => ref
    .watch(notificationTokenCollectionRefProvider(userId: userId))
    .doc(token);
