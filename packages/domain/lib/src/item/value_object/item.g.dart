// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Item _$ItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_Item', json, ($checkedConvert) {
  final val = _Item(
    id: $checkedConvert('id', (v) => v as String),
    imagesPath: $checkedConvert(
      'imagesPath',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    name: $checkedConvert('name', (v) => v as String),
    wanterName: $checkedConvert('wanterName', (v) => v as String?),
    wishRank: $checkedConvert('wishRank', (v) => (v as num).toDouble()),
    wishSeason: $checkedConvert('wishSeason', (v) => v as String?),
    urls: $checkedConvert(
      'urls',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    memo: $checkedConvert('memo', (v) => v as String?),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$ItemToJson(_Item instance) => <String, dynamic>{
  'id': instance.id,
  'imagesPath': instance.imagesPath,
  'name': instance.name,
  'wanterName': instance.wanterName,
  'wishRank': instance.wishRank,
  'wishSeason': instance.wishSeason,
  'urls': instance.urls,
  'memo': instance.memo,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
