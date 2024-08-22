// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_share_link_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestoreShareLinkModelImpl _$$FirestoreShareLinkModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FirestoreShareLinkModelImpl(
      id: json['id'] as String,
      groupId: json['groupId'] as String,
      validDays: (json['validDays'] as num).toInt(),
      createdAt: dateFromTimestampValue(json['createdAt']),
      updatedAt: dateFromTimestampValue(json['updatedAt']),
    );

Map<String, dynamic> _$$FirestoreShareLinkModelImplToJson(
        _$FirestoreShareLinkModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'groupId': instance.groupId,
      'validDays': instance.validDays,
      'createdAt': timestampFromDateValue(instance.createdAt),
      'updatedAt': timestampFromDateValue(instance.updatedAt),
    };
