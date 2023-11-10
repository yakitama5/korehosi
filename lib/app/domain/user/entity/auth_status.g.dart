// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStatusImpl _$$AuthStatusImplFromJson(Map<String, dynamic> json) =>
    _$AuthStatusImpl(
      uid: json['uid'] as String,
      isAnonymous: json['isAnonymous'] as bool,
      linkedGoogle: json['linkedGoogle'] as bool,
      linkedApple: json['linkedApple'] as bool,
    );

Map<String, dynamic> _$$AuthStatusImplToJson(_$AuthStatusImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'isAnonymous': instance.isAnonymous,
      'linkedGoogle': instance.linkedGoogle,
      'linkedApple': instance.linkedApple,
    };
