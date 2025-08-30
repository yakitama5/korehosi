// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthStatus _$AuthStatusFromJson(Map<String, dynamic> json) => _AuthStatus(
      uid: json['uid'] as String,
      isAnonymous: json['isAnonymous'] as bool,
      linkedGoogle: json['linkedGoogle'] as bool,
      linkedApple: json['linkedApple'] as bool,
    );

Map<String, dynamic> _$AuthStatusToJson(_AuthStatus instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'isAnonymous': instance.isAnonymous,
      'linkedGoogle': instance.linkedGoogle,
      'linkedApple': instance.linkedApple,
    };
