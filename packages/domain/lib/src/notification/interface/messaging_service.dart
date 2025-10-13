import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/notification_message.dart';
import '../value_object/notification_event.dart';
import '../value_object/notification_permission.dart';
import '../value_object/notification_target.dart';

part 'messaging_service.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
MessagingService messagingService(Ref ref) =>
// アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

abstract class MessagingService {
  Future<NotificationPermission> requestPermission();

  Future<String?> getToken();

  Future<NotificationMessage?> getInitialMessage();

  Stream<NotificationMessage> onMessageOpenedApp();

  Future<void> sendMessage({
    required String groupId,
    required String uid,
    required String title,
    required String body,
    required NotificationTarget target,
    required NotificationEvent event,
    required String path,
  });
}
