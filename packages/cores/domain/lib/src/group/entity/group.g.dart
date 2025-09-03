// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Group _$GroupFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_Group', json, ($checkedConvert) {
  final val = _Group(
    id: $checkedConvert('id', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    joinUids: $checkedConvert(
      'joinUids',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
    ownerUid: $checkedConvert('ownerUid', (v) => v as String),
    itemCount: $checkedConvert('itemCount', (v) => (v as num?)?.toInt()),
    premium: $checkedConvert('premium', (v) => v as bool),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$GroupToJson(_Group instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'joinUids': instance.joinUids,
  'ownerUid': instance.ownerUid,
  'itemCount': instance.itemCount,
  'premium': instance.premium,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
