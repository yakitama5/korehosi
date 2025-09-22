// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_notification_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FirestoreNotificationTokenModel _$FirestoreNotificationTokenModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_FirestoreNotificationTokenModel', json, (
  $checkedConvert,
) {
  final val = _FirestoreNotificationTokenModel(
    token: $checkedConvert('token', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => dateFromTimestampValue(v)),
    updatedAt: $checkedConvert('updatedAt', (v) => dateFromTimestampValue(v)),
  );
  return val;
});

Map<String, dynamic> _$FirestoreNotificationTokenModelToJson(
  _FirestoreNotificationTokenModel instance,
) => <String, dynamic>{
  'token': instance.token,
  'createdAt': timestampFromDateValue(instance.createdAt),
  'updatedAt': timestampFromDateValue(instance.updatedAt),
};
