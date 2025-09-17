import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../firestore/extension/collection_reference.dart';
import '../constants/columns.dart';
import '../model/firestore_notification_token_model.dart';
import 'firestore.dart';

part 'firestore_notification_token_provider.g.dart';

/// 通知FCMトークンコレクションの参照
@riverpod
CollectionReference<FirestoreNotificationTokenModel>
    notificationTokenCollectionRef(
  Ref ref, {
  required String userId,
}) {
  return ref.watch(firestoreProvider).fcmTokensRef(userId).withConverter(
        fromFirestore: (snapshot, options) =>
            FirestoreNotificationTokenModel.fromJson(snapshot.data()!),
        toFirestore: (value, options) => {
          ...value.toJson(),

          // 日付項目は自動更新
          firestoreColumnUpdatedAt: FieldValue.serverTimestamp(),
          if (value.createdAt == null)
            firestoreColumnCreatedAt: FieldValue.serverTimestamp(),
        },
      );
}

/// 通知FCMトークンドキュメントの参照
@riverpod
DocumentReference<FirestoreNotificationTokenModel> notificationTokenDocumentRef(
  Ref ref, {
  required String userId,
  String? token,
}) =>
    ref
        .watch(notificationTokenCollectionRefProvider(userId: userId))
        .doc(token);
