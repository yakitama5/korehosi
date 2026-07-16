import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/group.dart';

part 'notification_message.freezed.dart';

extension type NotificationMessageSenderId(String value) {}
extension type NotificationMessageId(String value) {}

/// 通知メッセージ
@freezed
abstract class NotificationMessage with _$NotificationMessage {
  const factory NotificationMessage({
    NotificationMessageSenderId? senderId,
    String? category,
    GroupId? groupId,
    required String? path,
    String? from,
    NotificationMessageId? messageId,
    String? messageType,
  }) = _NotificationMessage;
}
