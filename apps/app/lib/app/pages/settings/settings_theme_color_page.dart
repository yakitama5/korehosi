import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/settings/components/settings_radio_list_tile.dart';
import 'package:flutter_app/app/pages/settings/components/settings_radio_scaffold.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_designsystem/common_assets.dart';
import 'package:packages_designsystem/extension.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/theme.dart';
import 'package:packages_domain/designsystem.dart';

class SettingsThemeColorPage extends HookConsumerWidget {
  const SettingsThemeColorPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDynamicColorSupported = ref.watch(
      dynamicColorSupportProviderProvider.select(
        (status) => switch (status) {
          DynamicColorSupportStatus.supported => true,
          DynamicColorSupportStatus.notSupported => false,
        },
      ),
    );
    final initialValue = ref.watch(themeColorProvider);
    final selected = useState<ThemeColor?>(initialValue);

    // ダイナミックカラーが対象外の場合は除外する
    final values = ThemeColor.values.where(
      (e) => switch (e) {
        ThemeColor.dynamicColor => isDynamicColorSupported,
        _ => true,
      },
    );

    return SettingsRadioScaffold(
      title: i18n.settings.settingsPage.layout.colorTheme,
      tiles: values.map((themeColor) {
        return SettingsRadioListTile<ThemeColor>(
          title: Text(commonI18n.kEnum.themeColor(context: themeColor)),
          value: themeColor,
          groupValue: selected.value,
          leading: switch (themeColor) {
            ThemeColor.dynamicColor => const Icon(Icons.person),
            ThemeColor.appColor => CommonAssets.images.logo.image(
              height: 24,
              width: 24,
            ),
            // 参考カラーを表示
            ThemeColor.blue ||
            ThemeColor.purple ||
            ThemeColor.green ||
            ThemeColor.red ||
            ThemeColor.pink ||
            ThemeColor.yellow ||
            ThemeColor.orange => SizedBox(
              height: 24,
              width: 24,
              child: ColoredBox(color: themeColor.seedColor!),
            ),
          },
          onChanged: (value) {
            selected.value = themeColor;
            ref.read(themeColorProvider.notifier).update(themeColor);
          },
        );
      }).toList(),
    );
  }
}
