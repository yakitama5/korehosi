import 'package:fcm_config/fcm_config.dart';
import 'package:packages_domain/notification.dart';

extension RemoteMessageX on RemoteMessage {
  /// ドメインモデルへの変換
  NotificationMessage toDomainModel() => NotificationMessage(
    senderId: senderId == null ? null : NotificationMessageSenderId(senderId!),
    category: category,
    path: data['path'] as String?,
    from: from,
    messageId: messageId == null ? null : NotificationMessageId(messageId!),
    messageType: messageType,
  );
}
