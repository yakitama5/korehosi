import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_message.freezed.dart';
part 'notification_message.g.dart';

/// 通知メッセージ
@freezed
class NotificationMessage with _$NotificationMessage {
  const factory NotificationMessage({
    String? senderId,
    String? category,
    required Map<String, dynamic> data,
    String? from,
    String? messageId,
    String? messageType,
  }) = _NotificationMessage;

  factory NotificationMessage.fromJson(Map<String, dynamic> json) =>
      _$NotificationMessageFromJson(json);
}
