// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FirestoreGroupModel _$FirestoreGroupModelFromJson(Map<String, dynamic> json) =>
    _FirestoreGroupModel(
      id: json['id'] as String,
      name: json['name'] as String,
      joinUids: (json['joinUids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      ownerUid: json['ownerUid'] as String,
      itemCount: (json['itemCount'] as num?)?.toInt(),
      premium: json['premium'] as bool,
      createdAt: dateFromTimestampValue(json['createdAt']),
      updatedAt: dateFromTimestampValue(json['updatedAt']),
    );

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
