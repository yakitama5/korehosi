// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'group_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroupMessage _$GroupMessageFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_GroupMessage', json, ($checkedConvert) {
      final val = _GroupMessage(
        id: $checkedConvert('id', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
        body: $checkedConvert('body', (v) => v as String),
        target: $checkedConvert(
          'target',
          (v) => $enumDecode(_$NotificationTargetEnumMap, v),
        ),
        event: $checkedConvert(
          'event',
          (v) => $enumDecode(_$NotificationEventEnumMap, v),
        ),
        path: $checkedConvert('path', (v) => v as String?),
        uid: $checkedConvert('uid', (v) => v as String),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$GroupMessageToJson(_GroupMessage instance) =>
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
