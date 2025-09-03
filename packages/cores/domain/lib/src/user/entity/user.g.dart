// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_User', json, ($checkedConvert) {
  final val = _User(
    id: $checkedConvert('id', (v) => v as String),
    ageGroup: $checkedConvert(
      'ageGroup',
      (v) => $enumDecode(_$AgeGroupEnumMap, v),
    ),
    name: $checkedConvert('name', (v) => v as String?),
    joinGroupIds: $checkedConvert(
      'joinGroupIds',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'ageGroup': _$AgeGroupEnumMap[instance.ageGroup]!,
  'name': instance.name,
  'joinGroupIds': instance.joinGroupIds,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};

const _$AgeGroupEnumMap = {AgeGroup.child: 'child', AgeGroup.adult: 'adult'};
