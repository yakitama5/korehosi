import '../value_object/notification_target.dart';

enum WishReminderTiming {
  sameDay(0),
  dayBefore(1),
  weekBefore(7);

  const WishReminderTiming(this.daysBefore);

  final int daysBefore;
}

final class WishReminderSettings {
  const WishReminderSettings({
    this.enabled = false,
    this.timings = const {WishReminderTiming.dayBefore},
    this.audience = NotificationTarget.adult,
    this.timeZone = 'Asia/Tokyo',
  });

  final bool enabled;
  final Set<WishReminderTiming> timings;
  final NotificationTarget audience;
  final String timeZone;

  WishReminderSettings copyWith({
    bool? enabled,
    Set<WishReminderTiming>? timings,
    NotificationTarget? audience,
    String? timeZone,
  }) => WishReminderSettings(
    enabled: enabled ?? this.enabled,
    timings: timings ?? this.timings,
    audience: audience ?? this.audience,
    timeZone: timeZone ?? this.timeZone,
  );

  @override
  bool operator ==(Object other) =>
      other is WishReminderSettings &&
      other.enabled == enabled &&
      other.audience == audience &&
      other.timeZone == timeZone &&
      other.timings.length == timings.length &&
      other.timings.containsAll(timings);

  @override
  int get hashCode => Object.hash(
    enabled,
    audience,
    timeZone,
    Object.hashAllUnordered(timings),
  );
}
