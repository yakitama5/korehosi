// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationToken _$NotificationTokenFromJson(Map<String, dynamic> json) =>
    _NotificationToken(
      token: json['token'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$NotificationTokenToJson(_NotificationToken instance) =>
    <String, dynamic>{
      'token': instance.token,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
