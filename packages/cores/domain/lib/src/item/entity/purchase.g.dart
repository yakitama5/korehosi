// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'purchase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Purchase _$PurchaseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_Purchase', json, ($checkedConvert) {
  final val = _Purchase(
    id: $checkedConvert('id', (v) => v as String),
    price: $checkedConvert('price', (v) => (v as num?)?.toInt()),
    buyerName: $checkedConvert('buyerName', (v) => v as String?),
    planDate: $checkedConvert(
      'planDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    surprise: $checkedConvert('surprise', (v) => v as bool),
    sentAt: $checkedConvert(
      'sentAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    memo: $checkedConvert('memo', (v) => v as String?),
    uid: $checkedConvert('uid', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

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
