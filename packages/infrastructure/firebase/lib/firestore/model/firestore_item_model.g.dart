// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FirestoreItemModel _$FirestoreItemModelFromJson(Map<String, dynamic> json) =>
    _FirestoreItemModel(
      id: json['id'] as String,
      imagesPath: (json['imagesPath'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      name: json['name'] as String,
      wanterName: json['wanterName'] as String?,
      wishRank: (json['wishRank'] as num).toDouble(),
      wishSeason: json['wishSeason'] as String?,
      urls: (json['urls'] as List<dynamic>?)?.map((e) => e as String).toList(),
      memo: json['memo'] as String?,
      createdAt: dateFromTimestampValue(json['createdAt']),
      updatedAt: dateFromTimestampValue(json['updatedAt']),
    );

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
