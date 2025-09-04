// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'auth_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthStatus _$AuthStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_AuthStatus', json, ($checkedConvert) {
      final val = _AuthStatus(
        uid: $checkedConvert('uid', (v) => v as String),
        isAnonymous: $checkedConvert('isAnonymous', (v) => v as bool),
        linkedGoogle: $checkedConvert('linkedGoogle', (v) => v as bool),
        linkedApple: $checkedConvert('linkedApple', (v) => v as bool),
      );
      return val;
    });

Map<String, dynamic> _$AuthStatusToJson(_AuthStatus instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'isAnonymous': instance.isAnonymous,
      'linkedGoogle': instance.linkedGoogle,
      'linkedApple': instance.linkedApple,
    };
