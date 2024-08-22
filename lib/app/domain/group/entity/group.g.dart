// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GroupImpl _$$GroupImplFromJson(Map<String, dynamic> json) => _$GroupImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      joinUids:
          (json['joinUids'] as List<dynamic>).map((e) => e as String).toList(),
      ownerUid: json['ownerUid'] as String,
      itemCount: (json['itemCount'] as num?)?.toInt(),
      premium: json['premium'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$GroupImplToJson(_$GroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'joinUids': instance.joinUids,
      'ownerUid': instance.ownerUid,
      'itemCount': instance.itemCount,
      'premium': instance.premium,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
