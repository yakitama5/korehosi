import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/settings/components/themed_settings_list.dart';
import 'package:flutter_app/app/routes/importer.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/common.dart';
import 'package:packages_designsystem/helper.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/theme.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:permission_handler/permission_handler.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 現在の設定値を取得
    final uiStyle = ref.watch(uiStyleProvider);
    final themeColor = ref.watch(themeColorProvider);
    final themeMode = ref.watch(themeModeProvider);

    // 設定アプリと行き来するため、ライフサイクルを検知してリビルドを行う
    return AppLifecycleBuilder(
      builder: (context, state) {
        final messages = i18n.settings.settingsPage;

        // 通知権限の可否
        final isNotificationGranted = Permission.notification.status.isGranted;
        return Scaffold(
          appBar: AppBar(title: Text(messages.title), centerTitle: true),
          body: FutureBuilder(
            future: isNotificationGranted,
            builder: (_, snap) => ThemedSettingsList(
              sections: [
                SettingsSection(
                  title: Text(messages.account.head),
                  tiles: [
                    SettingsTile.navigation(
                      leading: const Icon(Icons.person),
                      title: Text(messages.account.profile),
                      onPressed: (context) => _onProfile(context, ref),
                    ),
                    SettingsTile.navigation(
                      leading: const Icon(Icons.group),
                      title: Text(messages.account.group),
                      onPressed: (context) => _onGroup(context, ref),
                    ),
                    SettingsTile.navigation(
                      leading: const Icon(Icons.link),
                      title: Text(messages.account.account),
                      onPressed: (context) => _onAccount(context, ref),
                    ),
                    SettingsTile.switchTile(
                      initialValue: snap.data == true,
                      onToggle: (value) async {
                        // 設定アプリから変更を促す
                        if (snap.data == true) {
                          await showPermissionOffDialog(
                            context: context,
                            ref: ref,
                            permission: Permission.notification,
                          );
                        } else {
                          await showPermissionDeinedDialog(
                            context: context,
                            ref: ref,
                            permission: Permission.notification,
                          );
                        }
                      },
                      title: Text(messages.account.pushNotification.title),
                      description: Text(
                        messages.account.pushNotification.caption,
                      ),
                    ),
                  ],
                ),
                SettingsSection(
                  title: Text(messages.layout.haed),
                  tiles: [
                    SettingsTile.navigation(
                      leading: const Icon(Icons.style),
                      title: Text(messages.layout.uiStyle),
                      value: Text(commonI18n.kEnum.uiStyle(context: uiStyle)),
                      onPressed: const SettingsUiStylePageRoute().go,
                    ),
                    SettingsTile.navigation(
                      leading: Icon(switch (themeMode) {
                        ThemeMode.system => Icons.settings,
                        ThemeMode.light => Icons.light_mode,
                        ThemeMode.dark => Icons.dark_mode,
                      }),
                      title: Text(messages.layout.themeMode),
                      value: Text(
                        commonI18n.kEnum.themeMode(context: themeMode),
                      ),
                      onPressed: const SettingsThemeModePageRoute().go,
                    ),
                    SettingsTile.navigation(
                      leading: const Icon(Icons.color_lens),
                      title: Text(messages.layout.colorTheme),
                      value: Text(
                        commonI18n.kEnum.themeColor(context: themeColor),
                      ),
                      onPressed: const SettingsThemeColorPageRoute().go,
                    ),
                  ],
                ),
                SettingsSection(
                  title: Text(messages.help.head),
                  tiles: [
                    SettingsTile.navigation(
                      leading: const Icon(CustomIcons.beginner),
                      title: Text(messages.help.howToUse),
                      onPressed: (context) => _onHowToUse(context, ref),
                    ),
                    SettingsTile.navigation(
                      leading: const Icon(Icons.help),
                      title: Text(messages.help.contactUs),
                      onPressed: (context) => _onContactUs(context, ref),
                    ),
                    SettingsTile.navigation(
                      leading: const Icon(CustomIcons.x_twitter),
                      title: Text(messages.help.developperTwitter),
                      onPressed: (context) =>
                          _onDevelopperTwitter(context, ref),
                    ),
                    SettingsTile.navigation(
                      leading: const Icon(Icons.lock),
                      title: Text(messages.help.privacyPolicy),
                      onPressed: (context) => _onPrivacyPolicy(context, ref),
                    ),
                    SettingsTile.navigation(
                      title: Text(messages.help.license),
                      onPressed: (context) => _onLicense(context, ref),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  ///
  /// Actions
  ///

  void _onProfile(BuildContext context, WidgetRef ref) {
    const ProfileRouteData().go(context);
  }

  void _onGroup(BuildContext context, WidgetRef ref) {
    const GroupsRouteData().go(context);
  }

  void _onAccount(BuildContext context, WidgetRef ref) {
    const AccountRouteData().go(context);
  }

  Future<bool> _onHowToUse(BuildContext context, WidgetRef ref) {
    return lanchUrlStringSafety(context, urlConfig.howToUse);
  }

  Future<bool> _onContactUs(BuildContext context, WidgetRef ref) {
    return lanchUrlStringSafety(context, urlConfig.contactUs);
  }

  Future<bool> _onDevelopperTwitter(BuildContext context, WidgetRef ref) {
    // Notes: https://pub.dev/packages/url_launcher#configuration
    return lanchUrlStringSafety(
      context,
      urlConfig.developperXApp,
      secondUrl: urlConfig.developperXWeb,
    );
  }

  Future<bool> _onPrivacyPolicy(BuildContext context, WidgetRef ref) {
    return lanchUrlStringSafety(context, urlConfig.privacyPolicyJa);
  }

  void _onLicense(BuildContext context, WidgetRef ref) {
    const LicenseRouteData().go(context);
  }
}
