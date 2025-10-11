import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/settings/components/settings_radio_list_tile.dart';
import 'package:flutter_app/app/pages/settings/components/settings_radio_scaffold.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_designsystem/extension.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/theme.dart';
import 'package:packages_domain/designsystem.dart';

class SettingsUiStylePage extends HookConsumerWidget {
  const SettingsUiStylePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialValue = ref.watch(uiStyleProvider);
    final selected = useState<UIStyle?>(initialValue);

    return SettingsRadioScaffold(
      title: i18n.settings.settingsPage.layout.uiStyle,
      tiles: UIStyle.values.map((style) {
        return SettingsRadioListTile<UIStyle>(
          title: Text(commonI18n.kEnum.uiStyle(context: style)),
          value: style,
          groupValue: selected.value,
          leading: Icon(style.iconData),
          onChanged: (_) {
            selected.value = style;
            ref.read(uiStyleProvider.notifier).update(style);
          },
        );
      }).toList(),
    );
  }
}
