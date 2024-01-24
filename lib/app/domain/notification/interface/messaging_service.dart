import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../value_object/notification_permission.dart';

part 'messaging_service.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
MessagingService messagingService(MessagingServiceRef ref) =>
// アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

abstract class MessagingService {
  Future<NotificationPermission> requestPermission();

  Future<String?> getToken();

  Future<void> sendMessageToAll({
    required String groupId,
    required String message,
    required String uid,
  });

  Future<void> sendMessageToAdult({
    required String groupId,
    required String message,
    required String uid,
  });

  Future<void> sendMessageToChild({
    required String groupId,
    required String message,
    required String uid,
  });
}
