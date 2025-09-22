// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_purchase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FirestorePurchaseModel _$FirestorePurchaseModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_FirestorePurchaseModel', json, ($checkedConvert) {
  final val = _FirestorePurchaseModel(
    id: $checkedConvert('id', (v) => v as String),
    price: $checkedConvert('price', (v) => (v as num?)?.toInt()),
    buyerName: $checkedConvert('buyerName', (v) => v as String?),
    planDate: $checkedConvert('planDate', (v) => dateFromTimestampValue(v)),
    surprise: $checkedConvert('surprise', (v) => v as bool),
    sentAt: $checkedConvert('sentAt', (v) => dateFromTimestampValue(v)),
    memo: $checkedConvert('memo', (v) => v as String?),
    uid: $checkedConvert('uid', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => dateFromTimestampValue(v)),
    updatedAt: $checkedConvert('updatedAt', (v) => dateFromTimestampValue(v)),
  );
  return val;
});

Map<String, dynamic> _$FirestorePurchaseModelToJson(
  _FirestorePurchaseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'price': instance.price,
  'buyerName': instance.buyerName,
  'planDate': timestampFromDateValue(instance.planDate),
  'surprise': instance.surprise,
  'sentAt': timestampFromDateValue(instance.sentAt),
  'memo': instance.memo,
  'uid': instance.uid,
  'createdAt': timestampFromDateValue(instance.createdAt),
  'updatedAt': timestampFromDateValue(instance.updatedAt),
};
