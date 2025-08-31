// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_notification_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FirestoreNotificationTokenModel _$FirestoreNotificationTokenModelFromJson(
  Map<String, dynamic> json,
) => _FirestoreNotificationTokenModel(
  token: json['token'] as String,
  createdAt: dateFromTimestampValue(json['createdAt']),
  updatedAt: dateFromTimestampValue(json['updatedAt']),
);

Map<String, dynamic> _$FirestoreNotificationTokenModelToJson(
  _FirestoreNotificationTokenModel instance,
) => <String, dynamic>{
  'token': instance.token,
  'createdAt': timestampFromDateValue(instance.createdAt),
  'updatedAt': timestampFromDateValue(instance.updatedAt),
};
