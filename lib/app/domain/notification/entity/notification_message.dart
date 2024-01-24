import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/notification_target.dart';

part 'notification_message.freezed.dart';
part 'notification_message.g.dart';

@freezed
class NotificationMessage with _$NotificationMessage {
  const factory NotificationMessage({
    required String id,
    required String body,
    required NotificationTarget target,
    required String uid,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _NotificationMessage;

  factory NotificationMessage.fromJson(Map<String, dynamic> json) =>
      _$NotificationMessageFromJson(json);
}
