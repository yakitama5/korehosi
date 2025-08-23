import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/notification/entity/notification_message.dart';
import '../../domain/notification/interface/messaging_service.dart';

part 'notification_message_provider.g.dart';

@riverpod
Stream<NotificationMessage> notificationMessage(Ref ref) =>
    ref.read(messagingServiceProvider).onMessageOpenedApp();
