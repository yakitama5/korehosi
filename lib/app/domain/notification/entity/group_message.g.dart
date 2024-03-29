// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupMessageImpl _$$GroupMessageImplFromJson(Map<String, dynamic> json) =>
    _$GroupMessageImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      target: $enumDecode(_$NotificationTargetEnumMap, json['target']),
      event: $enumDecode(_$NotificationEventEnumMap, json['event']),
      path: json['path'] as String?,
      uid: json['uid'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$GroupMessageImplToJson(_$GroupMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'target': _$NotificationTargetEnumMap[instance.target]!,
      'event': _$NotificationEventEnumMap[instance.event]!,
      'path': instance.path,
      'uid': instance.uid,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$NotificationTargetEnumMap = {
  NotificationTarget.all: 'all',
  NotificationTarget.adult: 'adult',
  NotificationTarget.child: 'child',
};

const _$NotificationEventEnumMap = {
  NotificationEvent.addWishItem: 'addWishItem',
};
