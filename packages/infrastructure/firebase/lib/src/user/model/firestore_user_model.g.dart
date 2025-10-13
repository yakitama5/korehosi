// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FirestoreUserModel _$FirestoreUserModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_FirestoreUserModel', json, ($checkedConvert) {
  final val = _FirestoreUserModel(
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
    createdAt: $checkedConvert('createdAt', (v) => dateFromTimestampValue(v)),
    updatedAt: $checkedConvert('updatedAt', (v) => dateFromTimestampValue(v)),
  );
  return val;
});

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
