import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/settings/components/themed_settings_list.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/user.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/notification.dart';

class WishReminderSettingsPage extends ConsumerWidget {
  const WishReminderSettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(wishReminderSettingsProvider);
    final messages = i18n.settings.wishReminderSettingsPage;
    return Scaffold(
      appBar: AppBar(title: Text(messages.title), centerTitle: true),
      body: settings.when(
        loading: () => const Center(child: ExpressiveLoadingIndicator()),
        error: (error, _) => Center(child: Text(error.toString())),
        data: (value) => ThemedSettingsList(
          sections: [
            SettingsSection(
              tiles: [
                SettingsTile.switchTile(
                  initialValue: value.enabled,
                  onToggle: (enabled) => _save(
                    ref,
                    value.copyWith(enabled: enabled),
                  ),
                  title: Text(messages.enabled),
                  description: Text(messages.description),
                ),
              ],
            ),
            SettingsSection(
              title: Text(messages.timing.title),
              tiles: WishReminderTiming.values
                  .map(
                    (timing) => SettingsTile.switchTile(
                      enabled: value.enabled,
                      initialValue: value.timings.contains(timing),
                      onToggle: (selected) {
                        final timings = {...value.timings};
                        if (!selected && timings.length == 1) {
                          return Future<void>.value();
                        }
                        selected ? timings.add(timing) : timings.remove(timing);
                        return _save(ref, value.copyWith(timings: timings));
                      },
                      title: Text(switch (timing) {
                        WishReminderTiming.sameDay => messages.timing.sameDay,
                        WishReminderTiming.dayBefore =>
                          messages.timing.dayBefore,
                        WishReminderTiming.weekBefore =>
                          messages.timing.weekBefore,
                      }),
                    ),
                  )
                  .toList(),
            ),
            SettingsSection(
              title: Text(messages.audience.title),
              tiles: [
                SettingsTile.switchTile(
                  enabled: value.enabled,
                  initialValue: value.audience == NotificationTarget.all,
                  onToggle: (all) => _save(
                    ref,
                    value.copyWith(
                      audience: all
                          ? NotificationTarget.all
                          : NotificationTarget.adult,
                    ),
                  ),
                  title: Text(messages.audience.everyone),
                  description: Text(messages.audience.description),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _save(WidgetRef ref, WishReminderSettings settings) =>
      ref.read(userUsecaseProvider).updateWishReminderSettings(settings);
}
