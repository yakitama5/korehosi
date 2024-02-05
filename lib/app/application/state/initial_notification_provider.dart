import 'package:family_wish_list/app/domain/notification/interface/messaging_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/notification/entity/notification_message.dart';

part 'initial_notification_provider.g.dart';

/// プッシュ通知でアプリを表示した際の初期メッセージ
@riverpod
Future<NotificationMessage?> initialNotificationMessage(
  InitialNotificationMessageRef ref,
) =>
    ref.read(messagingServiceProvider).getInitialMessage();
