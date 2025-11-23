// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_buyer_name_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FirestoreBuyerNameModel _$FirestoreBuyerNameModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('_FirestoreBuyerNameModel', json, ($checkedConvert) {
  final val = _FirestoreBuyerNameModel(
    name: $checkedConvert('name', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$FirestoreBuyerNameModelToJson(
  _FirestoreBuyerNameModel instance,
) => <String, dynamic>{'name': instance.name};
