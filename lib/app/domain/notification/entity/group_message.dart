import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/notification_event.dart';
import '../value_object/notification_target.dart';

part 'group_message.freezed.dart';
part 'group_message.g.dart';

/// グループ内に向けたメッセージ
@freezed
class GroupMessage with _$GroupMessage {
  const factory GroupMessage({
    required String id,
    required String body,
    required NotificationTarget target,
    required NotificationEvent event,
    String? path,
    required String uid,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _GroupMessage;

  factory GroupMessage.fromJson(Map<String, dynamic> json) =>
      _$GroupMessageFromJson(json);
}
