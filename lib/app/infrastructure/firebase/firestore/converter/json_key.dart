import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

DateTime? dateFromTimestampValue(dynamic value) =>
    (value as Timestamp?)?.toDate();
Timestamp? timestampFromDateValue(dynamic value) =>
    value is DateTime ? Timestamp.fromDate(value) : null;

const timestampKey =
    JsonKey(fromJson: dateFromTimestampValue, toJson: timestampFromDateValue);
