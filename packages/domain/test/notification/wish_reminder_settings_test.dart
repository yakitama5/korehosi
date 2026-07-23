import 'package:packages_domain/notification.dart';
import 'package:test/test.dart';

void main() {
  test('reminders are opt-in and adult-only by default', () {
    const settings = WishReminderSettings();

    expect(settings.enabled, isFalse);
    expect(settings.timings, {WishReminderTiming.dayBefore});
    expect(settings.audience, NotificationTarget.adult);
  });

  test('copyWith preserves unrelated reminder choices', () {
    const settings = WishReminderSettings(
      enabled: true,
      timings: {WishReminderTiming.sameDay, WishReminderTiming.weekBefore},
    );

    final changed = settings.copyWith(audience: NotificationTarget.all);

    expect(changed.enabled, isTrue);
    expect(changed.timings, settings.timings);
    expect(changed.audience, NotificationTarget.all);
  });
}
