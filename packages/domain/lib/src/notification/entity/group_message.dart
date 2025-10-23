import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/user.dart';

import '../value_object/notification_event.dart';
import '../value_object/notification_target.dart';

part 'group_message.freezed.dart';

extension type GroupMessageId(String value) {}

/// グループ内に向けたメッセージ
@freezed
abstract class GroupMessage with _$GroupMessage {
  const factory GroupMessage({
    required GroupMessageId id,
    required String title,
    required String body,
    required NotificationTarget target,
    required NotificationEvent event,
    String? path,
    required UserId userId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _GroupMessage;
}
