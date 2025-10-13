// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_share_link_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FirestoreShareLinkModel _$FirestoreShareLinkModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_FirestoreShareLinkModel', json, ($checkedConvert) {
  final val = _FirestoreShareLinkModel(
    id: $checkedConvert('id', (v) => v as String),
    groupId: $checkedConvert('groupId', (v) => v as String),
    validDays: $checkedConvert('validDays', (v) => (v as num).toInt()),
    createdAt: $checkedConvert('createdAt', (v) => dateFromTimestampValue(v)),
    updatedAt: $checkedConvert('updatedAt', (v) => dateFromTimestampValue(v)),
  );
  return val;
});

Map<String, dynamic> _$FirestoreShareLinkModelToJson(
  _FirestoreShareLinkModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'groupId': instance.groupId,
  'validDays': instance.validDays,
  'createdAt': timestampFromDateValue(instance.createdAt),
  'updatedAt': timestampFromDateValue(instance.updatedAt),
};
