// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Group _$GroupFromJson(Map<String, dynamic> json) => _Group(
  id: json['id'] as String,
  name: json['name'] as String,
  joinUids: (json['joinUids'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  ownerUid: json['ownerUid'] as String,
  itemCount: (json['itemCount'] as num?)?.toInt(),
  premium: json['premium'] as bool,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

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
