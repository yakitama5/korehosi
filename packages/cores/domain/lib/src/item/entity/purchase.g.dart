// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Purchase _$PurchaseFromJson(Map<String, dynamic> json) => _Purchase(
  id: json['id'] as String,
  price: (json['price'] as num?)?.toInt(),
  buyerName: json['buyerName'] as String?,
  planDate: json['planDate'] == null
      ? null
      : DateTime.parse(json['planDate'] as String),
  surprise: json['surprise'] as bool,
  sentAt: json['sentAt'] == null
      ? null
      : DateTime.parse(json['sentAt'] as String),
  memo: json['memo'] as String?,
  uid: json['uid'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$PurchaseToJson(_Purchase instance) => <String, dynamic>{
  'id': instance.id,
  'price': instance.price,
  'buyerName': instance.buyerName,
  'planDate': instance.planDate?.toIso8601String(),
  'surprise': instance.surprise,
  'sentAt': instance.sentAt?.toIso8601String(),
  'memo': instance.memo,
  'uid': instance.uid,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
