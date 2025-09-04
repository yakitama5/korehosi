import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cores_domain/notification.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Timestamp → DateTimeのConverter
DateTime? dateFromTimestampValue(dynamic value) =>
    (value as Timestamp?)?.toDate();

/// DateTime → TimestampのConverter
Timestamp? timestampFromDateValue(dynamic value) =>
    value is DateTime ? Timestamp.fromDate(value) : null;

/// String → NotificationEventのConverter
NotificationEvent notificationEventFromStringValue(dynamic value) {
  return NotificationEvent.values.byName(value as String);
}

/// NotificationEvent → StringのConverter
String stringFromNotificationEventValue(dynamic value) =>
    (value as NotificationEvent).actionName;

/// Timestamp ↔ DateTimeのConverter Json Key
const timestampKey = JsonKey(
  fromJson: dateFromTimestampValue,
  toJson: timestampFromDateValue,
);

/// NotificationEvent ↔ StringのConverter Json Key
const notificationEventKey = JsonKey(
  fromJson: notificationEventFromStringValue,
  toJson: stringFromNotificationEventValue,
);
