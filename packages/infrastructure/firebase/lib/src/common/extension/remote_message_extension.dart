import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:packages_domain/notification.dart';

extension RemoteMessageX on RemoteMessage {
  /// ドメインモデルへの変換
  NotificationMessage toDomainModel() => NotificationMessage(
    senderId: senderId == null ? null : NotificationMessageSenderId(senderId!),
    category: category,
    data: data,
    from: from,
    messageId: messageId == null ? null : NotificationMessageId(messageId!),
    messageType: messageType,
  );
}
