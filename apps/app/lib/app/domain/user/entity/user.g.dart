// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
      id: json['id'] as String,
      ageGroup: $enumDecode(_$AgeGroupEnumMap, json['ageGroup']),
      name: json['name'] as String?,
      joinGroupIds: (json['joinGroupIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
      'id': instance.id,
      'ageGroup': _$AgeGroupEnumMap[instance.ageGroup]!,
      'name': instance.name,
      'joinGroupIds': instance.joinGroupIds,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$AgeGroupEnumMap = {
  AgeGroup.child: 'child',
  AgeGroup.adult: 'adult',
};
