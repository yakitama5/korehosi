// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationMessageImpl _$$NotificationMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationMessageImpl(
      id: json['id'] as String,
      body: json['body'] as String,
      target: $enumDecode(_$NotificationTargetEnumMap, json['target']),
      uid: json['uid'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$NotificationMessageImplToJson(
        _$NotificationMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'target': _$NotificationTargetEnumMap[instance.target]!,
      'uid': instance.uid,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$NotificationTargetEnumMap = {
  NotificationTarget.all: 'all',
  NotificationTarget.adult: 'adult',
  NotificationTarget.child: 'child',
};
