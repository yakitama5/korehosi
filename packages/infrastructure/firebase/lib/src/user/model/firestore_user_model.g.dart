// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FirestoreUserModel _$FirestoreUserModelFromJson(Map<String, dynamic> json) =>
    _FirestoreUserModel(
      id: json['id'] as String,
      ageGroup: $enumDecode(_$AgeGroupEnumMap, json['ageGroup']),
      name: json['name'] as String?,
      joinGroupIds: (json['joinGroupIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: dateFromTimestampValue(json['createdAt']),
      updatedAt: dateFromTimestampValue(json['updatedAt']),
    );

Map<String, dynamic> _$FirestoreUserModelToJson(_FirestoreUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ageGroup': _$AgeGroupEnumMap[instance.ageGroup]!,
      'name': instance.name,
      'joinGroupIds': instance.joinGroupIds,
      'createdAt': timestampFromDateValue(instance.createdAt),
      'updatedAt': timestampFromDateValue(instance.updatedAt),
    };

const _$AgeGroupEnumMap = {AgeGroup.child: 'child', AgeGroup.adult: 'adult'};
