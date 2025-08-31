// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_group_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FirestoreGroupMessageModel _$FirestoreGroupMessageModelFromJson(
  Map<String, dynamic> json,
) => _FirestoreGroupMessageModel(
  id: json['id'] as String,
  title: json['title'] as String,
  body: json['body'] as String,
  target: $enumDecode(_$NotificationTargetEnumMap, json['target']),
  event: notificationEventFromStringValue(json['event']),
  path: json['path'] as String?,
  uid: json['uid'] as String,
  createdAt: dateFromTimestampValue(json['createdAt']),
  updatedAt: dateFromTimestampValue(json['updatedAt']),
);

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
