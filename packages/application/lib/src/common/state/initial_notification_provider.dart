import 'package:packages_domain/notification.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'initial_notification_provider.g.dart';

/// プッシュ通知でアプリを表示した際の初期メッセージ
@riverpod
Future<NotificationMessage?> initialNotificationMessage(Ref ref) =>
    ref.read(messagingServiceProvider).getInitialMessage();
