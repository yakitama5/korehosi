import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/notification/interface/messaging_service.dart';
import '../../../domain/notification/value_object/notification_event.dart';
import '../../../domain/notification/value_object/notification_permission.dart';
import '../../../domain/notification/value_object/notification_target.dart';
import '../firestore/model/firestore_group_message_model.dart';
import '../firestore/state/firestore_group_message_provider.dart';
import '../messaging/state/firebase_messaging.dart';

/// Firebaseを利用したサービスの実装
class FirebaseMessagingMessagingService implements MessagingService {
  const FirebaseMessagingMessagingService(this.ref);

  final Ref ref;

  @override
  Future<String?> getToken() => ref.read(firebaseMessagingProvider).getToken();

  @override
  Future<NotificationPermission> requestPermission() async {
    final settings =
        await ref.read(firebaseMessagingProvider).requestPermission();

    // FCM特有のドメインモデルに変換
    return switch (settings.authorizationStatus) {
      AuthorizationStatus.authorized => NotificationPermission.authorized,
      AuthorizationStatus.denied => NotificationPermission.denied,
      AuthorizationStatus.notDetermined => NotificationPermission.notDetermined,
      AuthorizationStatus.provisional => NotificationPermission.provisional,
    };
  }

  // TODO(yakitama5): `RemoteMessage`はFirebaseMessageに依存してしまうので変更すること
  Future<RemoteMessage?> getInitialMessage() =>
      ref.read(firebaseMessagingProvider).getInitialMessage();

  // TODO(yakitama5): `RemoteMessage`はFirebaseMessageに依存してしまうので変更すること
  Stream<RemoteMessage> onMessageOpenedApp() {
    return FirebaseMessaging.onMessageOpenedApp;
  }

  @override
  Future<void> sendMessage({
    required String groupId,
    required String uid,
    required String message,
    required NotificationTarget target,
    required NotificationEvent event,
    required String path,
  }) {
    // IDが指定されていなければ、新しいドキュメントを取得
    final docRef = ref.read(
      groupMessageDocumentRefProvider(groupId: groupId),
    );

    // Firestore用のモデルに変換
    final docModel = FirestoreGroupMessageModel(
      id: docRef.id,
      body: message,
      target: target,
      event: event,
      path: path,
      uid: uid,
    );

    // 登録
    return docRef.set(docModel);
  }
}
