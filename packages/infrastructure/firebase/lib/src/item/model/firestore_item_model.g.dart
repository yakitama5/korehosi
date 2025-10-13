// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FirestoreItemModel _$FirestoreItemModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_FirestoreItemModel', json, ($checkedConvert) {
  final val = _FirestoreItemModel(
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
    createdAt: $checkedConvert('createdAt', (v) => dateFromTimestampValue(v)),
    updatedAt: $checkedConvert('updatedAt', (v) => dateFromTimestampValue(v)),
  );
  return val;
});

Map<String, dynamic> _$FirestoreItemModelToJson(_FirestoreItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imagesPath': instance.imagesPath,
      'name': instance.name,
      'wanterName': instance.wanterName,
      'wishRank': instance.wishRank,
      'wishSeason': instance.wishSeason,
      'urls': instance.urls,
      'memo': instance.memo,
      'createdAt': timestampFromDateValue(instance.createdAt),
      'updatedAt': timestampFromDateValue(instance.updatedAt),
    };
