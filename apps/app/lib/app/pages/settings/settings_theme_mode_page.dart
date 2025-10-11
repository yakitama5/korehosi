import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/settings/components/settings_radio_list_tile.dart';
import 'package:flutter_app/app/pages/settings/components/settings_radio_scaffold.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/theme.dart';

class SettingsThemeModePage extends HookConsumerWidget {
  const SettingsThemeModePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialValue = ref.watch(themeModeProvider);
    final selected = useState<ThemeMode?>(initialValue);

    return SettingsRadioScaffold(
      title: i18n.settings.settingsPage.layout.themeMode,
      tiles: ThemeMode.values.map((themeMode) {
        return SettingsRadioListTile<ThemeMode>(
          title: Text(commonI18n.designsystem.themeMode(context: themeMode)),
          value: themeMode,
          groupValue: selected.value,
          leading: Icon(switch (themeMode) {
            ThemeMode.system => Icons.settings,
            ThemeMode.light => Icons.light_mode,
            ThemeMode.dark => Icons.dark_mode,
          }),
          onChanged: (_) {
            selected.value = themeMode;
            ref.read(themeModeProvider.notifier).update(themeMode);
          },
        );
      }).toList(),
    );
  }
}
