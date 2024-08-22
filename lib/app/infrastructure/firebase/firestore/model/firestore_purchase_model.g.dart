// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_purchase_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestorePurchaseModelImpl _$$FirestorePurchaseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FirestorePurchaseModelImpl(
      id: json['id'] as String,
      price: (json['price'] as num?)?.toInt(),
      buyerName: json['buyerName'] as String?,
      planDate: dateFromTimestampValue(json['planDate']),
      surprise: json['surprise'] as bool,
      sentAt: dateFromTimestampValue(json['sentAt']),
      memo: json['memo'] as String?,
      uid: json['uid'] as String,
      createdAt: dateFromTimestampValue(json['createdAt']),
      updatedAt: dateFromTimestampValue(json['updatedAt']),
    );

Map<String, dynamic> _$$FirestorePurchaseModelImplToJson(
        _$FirestorePurchaseModelImpl instance) =>
    <String, dynamic>{
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
