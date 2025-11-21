import 'package:packages_domain/notification.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_message_provider.g.dart';

@riverpod
Stream<NotificationMessage> notificationMessage(Ref ref) =>
    ref.read(messagingServiceProvider).onMessageOpenedApp();
