// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'notification_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationMessage _$NotificationMessageFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_NotificationMessage', json, ($checkedConvert) {
      final val = _NotificationMessage(
        senderId: $checkedConvert('senderId', (v) => v as String?),
        category: $checkedConvert('category', (v) => v as String?),
        data: $checkedConvert('data', (v) => v as Map<String, dynamic>),
        from: $checkedConvert('from', (v) => v as String?),
        messageId: $checkedConvert('messageId', (v) => v as String?),
        messageType: $checkedConvert('messageType', (v) => v as String?),
      );
      return val;
    });

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
