import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_token.freezed.dart';
part 'notification_token.g.dart';

/// プッシュ通知用のトークン
@freezed
abstract class NotificationToken with _$NotificationToken {
  const factory NotificationToken({
    required String token,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _NotificationToken;

  factory NotificationToken.fromJson(Map<String, dynamic> json) =>
      _$NotificationTokenFromJson(json);
}
