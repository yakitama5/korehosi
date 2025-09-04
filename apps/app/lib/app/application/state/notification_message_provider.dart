import 'package:cores_domain/notification.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_message_provider.g.dart';

@riverpod
Stream<NotificationMessage> notificationMessage(Ref ref) =>
    ref.read(messagingServiceProvider).onMessageOpenedApp();
