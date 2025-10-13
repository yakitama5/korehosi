// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'functions_join_group_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FunctionsJoinGroupResponse _$FunctionsJoinGroupResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_FunctionsJoinGroupResponse', json, ($checkedConvert) {
  final val = _FunctionsJoinGroupResponse(
    errorCode: $checkedConvert('errorCode', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$FunctionsJoinGroupResponseToJson(
  _FunctionsJoinGroupResponse instance,
) => <String, dynamic>{'errorCode': instance.errorCode};
