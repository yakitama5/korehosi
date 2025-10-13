// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'notification_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationToken _$NotificationTokenFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_NotificationToken', json, ($checkedConvert) {
  final val = _NotificationToken(
    token: $checkedConvert('token', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$NotificationTokenToJson(_NotificationToken instance) =>
    <String, dynamic>{
      'token': instance.token,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
