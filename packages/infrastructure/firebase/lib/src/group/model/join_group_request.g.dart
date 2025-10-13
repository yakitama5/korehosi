// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'join_group_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JoinGroupRequest _$JoinGroupRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_JoinGroupRequest', json, ($checkedConvert) {
      final val = _JoinGroupRequest(
        shareLinkId: $checkedConvert('shareLinkId', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$JoinGroupRequestToJson(_JoinGroupRequest instance) =>
    <String, dynamic>{'shareLinkId': instance.shareLinkId};
