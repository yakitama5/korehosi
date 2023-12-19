import 'package:firebase_messaging_platform_interface/src/types.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/notification/interface/messaging_service.dart';
import '../../../domain/notification/value_object/notification_permission.dart';
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
}
