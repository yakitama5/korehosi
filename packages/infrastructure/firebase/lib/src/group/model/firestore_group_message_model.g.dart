// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_group_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FirestoreGroupMessageModel _$FirestoreGroupMessageModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_FirestoreGroupMessageModel', json, ($checkedConvert) {
  final val = _FirestoreGroupMessageModel(
    id: $checkedConvert('id', (v) => v as String),
    title: $checkedConvert('title', (v) => v as String),
    body: $checkedConvert('body', (v) => v as String),
    target: $checkedConvert(
      'target',
      (v) => $enumDecode(_$NotificationTargetEnumMap, v),
    ),
    event: $checkedConvert('event', (v) => notificationEventFromStringValue(v)),
    path: $checkedConvert('path', (v) => v as String?),
    uid: $checkedConvert('uid', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => dateFromTimestampValue(v)),
    updatedAt: $checkedConvert('updatedAt', (v) => dateFromTimestampValue(v)),
  );
  return val;
});

Map<String, dynamic> _$FirestoreGroupMessageModelToJson(
  _FirestoreGroupMessageModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'body': instance.body,
  'target': _$NotificationTargetEnumMap[instance.target]!,
  'event': stringFromNotificationEventValue(instance.event),
  'path': instance.path,
  'uid': instance.uid,
  'createdAt': timestampFromDateValue(instance.createdAt),
  'updatedAt': timestampFromDateValue(instance.updatedAt),
};

const _$NotificationTargetEnumMap = {
  NotificationTarget.all: 'all',
  NotificationTarget.adult: 'adult',
  NotificationTarget.child: 'child',
};
