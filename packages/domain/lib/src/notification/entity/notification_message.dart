import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/notification.dart';
import 'package:packages_domain/user.dart';

part 'notification_message.freezed.dart';

/// 通知メッセージ
@freezed
abstract class NotificationMessage with _$NotificationMessage {
  const factory NotificationMessage({
    UserId? senderId,
    String? category,
    required Map<String, dynamic> data,
    String? from,
    GroupMessageId? messageId,
    String? messageType,
  }) = _NotificationMessage;
}
