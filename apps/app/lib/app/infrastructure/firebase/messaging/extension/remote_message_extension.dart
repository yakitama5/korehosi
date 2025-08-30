import 'package:firebase_messaging/firebase_messaging.dart';

import '../../../../domain/notification/entity/notification_message.dart';

extension RemoteMessageX on RemoteMessage {
  /// ドメインモデルへの変換
  NotificationMessage toDomainModel() => NotificationMessage(
        senderId: senderId,
        category: category,
        data: data,
        from: from,
        messageId: messageId,
        messageType: messageType,
      );
}
