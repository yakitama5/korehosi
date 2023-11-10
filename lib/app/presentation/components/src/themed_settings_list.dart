import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:settings_ui/settings_ui.dart';

class ThemedSettingsList extends HookConsumerWidget {
  const ThemedSettingsList({
    super.key,
    required this.sections,
    this.physics,
    this.platform,
    this.brightness,
    this.contentPadding,
  });

  final ScrollPhysics? physics;
  final DevicePlatform? platform;
  final Brightness? brightness;
  final EdgeInsetsGeometry? contentPadding;
  final List<AbstractSettingsSection> sections;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;

    return SettingsList(
      sections: sections,
      lightTheme: SettingsThemeData(
        settingsListBackground: colorScheme.background,
        titleTextColor: colorScheme.primary,
      ),
      darkTheme: SettingsThemeData(
        settingsListBackground: colorScheme.background,
        titleTextColor: colorScheme.primary,
      ),
      physics: physics,
      platform: platform,
      brightness: brightness,
      contentPadding: contentPadding,
    );
  }
}
