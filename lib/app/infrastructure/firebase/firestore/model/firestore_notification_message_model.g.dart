// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_notification_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestoreNotificationMessageModelImpl
    _$$FirestoreNotificationMessageModelImplFromJson(
            Map<String, dynamic> json) =>
        _$FirestoreNotificationMessageModelImpl(
          id: json['id'] as String,
          body: json['body'] as String,
          target: $enumDecode(_$NotificationTargetEnumMap, json['target']),
          uid: json['uid'] as String,
          createdAt: dateFromTimestampValue(json['createdAt']),
          updatedAt: dateFromTimestampValue(json['updatedAt']),
        );

Map<String, dynamic> _$$FirestoreNotificationMessageModelImplToJson(
        _$FirestoreNotificationMessageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'target': _$NotificationTargetEnumMap[instance.target]!,
      'uid': instance.uid,
      'createdAt': timestampFromDateValue(instance.createdAt),
      'updatedAt': timestampFromDateValue(instance.updatedAt),
    };

const _$NotificationTargetEnumMap = {
  NotificationTarget.all: 'all',
  NotificationTarget.adult: 'adult',
  NotificationTarget.child: 'child',
};
