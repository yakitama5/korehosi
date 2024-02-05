// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_group_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestoreGroupMessageModelImpl _$$FirestoreGroupMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FirestoreGroupMessageModelImpl(
      id: json['id'] as String,
      body: json['body'] as String,
      target: $enumDecode(_$NotificationTargetEnumMap, json['target']),
      event: notificationEventFromStringValue(json['event']),
      path: json['path'] as String?,
      uid: json['uid'] as String,
      createdAt: dateFromTimestampValue(json['createdAt']),
      updatedAt: dateFromTimestampValue(json['updatedAt']),
    );

Map<String, dynamic> _$$FirestoreGroupMessageModelImplToJson(
        _$FirestoreGroupMessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
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
