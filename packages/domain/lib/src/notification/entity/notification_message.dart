import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_message.freezed.dart';

extension type NotificationMessageSenderId(String value) {}
extension type NotificationMessageId(String value) {}

/// 通知メッセージ
@freezed
abstract class NotificationMessage with _$NotificationMessage {
  const factory NotificationMessage({
    NotificationMessageSenderId? senderId,
    String? category,
    required Map<String, dynamic> data,
    String? from,
    NotificationMessageId? messageId,
    String? messageType,
  }) = _NotificationMessage;
}
