// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => $checkedCreate(
  '_User',
  json,
  ($checkedConvert) {
    final val = _User(
      id: $checkedConvert('id', (v) => v as String),
      ageGroup: $checkedConvert(
        'age_group',
        (v) => $enumDecode(_$AgeGroupEnumMap, v),
      ),
      name: $checkedConvert('name', (v) => v as String?),
      joinGroupIds: $checkedConvert(
        'join_group_ids',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      createdAt: $checkedConvert(
        'created_at',
        (v) => DateTime.parse(v as String),
      ),
      updatedAt: $checkedConvert(
        'updated_at',
        (v) => DateTime.parse(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'ageGroup': 'age_group',
    'joinGroupIds': 'join_group_ids',
    'createdAt': 'created_at',
    'updatedAt': 'updated_at',
  },
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'age_group': _$AgeGroupEnumMap[instance.ageGroup]!,
  'name': instance.name,
  'join_group_ids': instance.joinGroupIds,
  'created_at': instance.createdAt.toIso8601String(),
  'updated_at': instance.updatedAt.toIso8601String(),
};

const _$AgeGroupEnumMap = {AgeGroup.child: 'child', AgeGroup.adult: 'adult'};
