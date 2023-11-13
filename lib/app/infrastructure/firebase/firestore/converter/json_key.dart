import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Timestamp → DateTimeのConverter
DateTime? dateFromTimestampValue(dynamic value) =>
    (value as Timestamp?)?.toDate();

/// DateTime → TimestampのConverter
Timestamp? timestampFromDateValue(dynamic value) =>
    value is DateTime ? Timestamp.fromDate(value) : null;

/// Timestamp ↔ DateTimeのConverter Json Key
const timestampKey =
    JsonKey(fromJson: dateFromTimestampValue, toJson: timestampFromDateValue);
