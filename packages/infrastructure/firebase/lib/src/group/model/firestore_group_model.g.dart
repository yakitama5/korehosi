// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FirestoreGroupModel _$FirestoreGroupModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_FirestoreGroupModel', json, ($checkedConvert) {
  final val = _FirestoreGroupModel(
    id: $checkedConvert('id', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    joinUids: $checkedConvert(
      'joinUids',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    ownerUid: $checkedConvert('ownerUid', (v) => v as String),
    itemCount: $checkedConvert('itemCount', (v) => (v as num?)?.toInt()),
    premium: $checkedConvert('premium', (v) => v as bool),
    createdAt: $checkedConvert('createdAt', (v) => dateFromTimestampValue(v)),
    updatedAt: $checkedConvert('updatedAt', (v) => dateFromTimestampValue(v)),
  );
  return val;
});

Map<String, dynamic> _$FirestoreGroupModelToJson(
  _FirestoreGroupModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'joinUids': instance.joinUids,
  'ownerUid': instance.ownerUid,
  'itemCount': instance.itemCount,
  'premium': instance.premium,
  'createdAt': timestampFromDateValue(instance.createdAt),
  'updatedAt': timestampFromDateValue(instance.updatedAt),
};
