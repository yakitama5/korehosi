// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationMessage _$NotificationMessageFromJson(Map<String, dynamic> json) =>
    _NotificationMessage(
      senderId: json['senderId'] as String?,
      category: json['category'] as String?,
      data: json['data'] as Map<String, dynamic>,
      from: json['from'] as String?,
      messageId: json['messageId'] as String?,
      messageType: json['messageType'] as String?,
    );

Map<String, dynamic> _$NotificationMessageToJson(
  _NotificationMessage instance,
) => <String, dynamic>{
  'senderId': instance.senderId,
  'category': instance.category,
  'data': instance.data,
  'from': instance.from,
  'messageId': instance.messageId,
  'messageType': instance.messageType,
};
