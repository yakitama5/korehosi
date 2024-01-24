// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_notification_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestoreNotificationTokenModelImpl
    _$$FirestoreNotificationTokenModelImplFromJson(Map<String, dynamic> json) =>
        _$FirestoreNotificationTokenModelImpl(
          token: json['token'] as String,
          createdAt: dateFromTimestampValue(json['createdAt']),
          updatedAt: dateFromTimestampValue(json['updatedAt']),
        );

Map<String, dynamic> _$$FirestoreNotificationTokenModelImplToJson(
        _$FirestoreNotificationTokenModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'createdAt': timestampFromDateValue(instance.createdAt),
      'updatedAt': timestampFromDateValue(instance.updatedAt),
    };
