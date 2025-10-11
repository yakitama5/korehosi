import 'package:flutter/material.dart';
import 'package:flutter_app/app/components/src/app_lifecycle_builder.dart';
import 'package:flutter_app/app/helper/permission_helper.dart';
import 'package:flutter_app/app/helper/url_launcher_helper.dart';
import 'package:flutter_app/app/hooks/src/use_theme.dart';
import 'package:flutter_app/app/pages/settings/components/themed_settings_list.dart';
import 'package:flutter_app/app/routes/importer.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/common.dart';
import 'package:packages_designsystem/theme.dart';
import 'package:permission_handler/permission_handler.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 設定アプリと行き来するため、ライフサイクルを検知してリビルドを行う
    return AppLifecycleBuilder(
      builder: (context, state) {
        // プラットフォームに応じたアイコンの出し訳
        final trailing = useTheme().isCupertinoPlatform
            ? const Icon(Icons.arrow_forward_ios_rounded)
            : null;

        // 通知権限の可否
        // BUG(yakitama5): Androidで権限OFFにした際に再起動がかかってしまう件を対処したい
        final isNotificationGranted = Permission.notification.status.isGranted;
        return Scaffold(
          appBar: AppBar(title: Text(i18n.app.settings), centerTitle: true),
          body: FutureBuilder(
            future: isNotificationGranted,
            builder: (_, snap) => ThemedSettingsList(
              sections: [
                SettingsSection(
                  title: Text(i18n.app.account),
                  tiles: [
                    SettingsTile.navigation(
                      leading: const Icon(Icons.person),
                      trailing: trailing,
                      title: Text(i18n.app.profile),
                      onPressed: (context) => _onProfile(context, ref),
                    ),
                    SettingsTile.navigation(
                      leading: const Icon(Icons.group),
                      trailing: trailing,
                      title: Text(i18n.app.group),
                      onPressed: (context) => _onGroup(context, ref),
                    ),
                    SettingsTile.navigation(
                      leading: const Icon(Icons.link),
                      trailing: trailing,
                      title: Text(i18n.app.account),
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
                      title: Text(i18n.app.pushNotification),
                      description: Text(i18n.app.pushNotificationDescription),
                    ),
                  ],
                ),
                SettingsSection(
                  title: Text(i18n.app.help),
                  tiles: [
                    SettingsTile.navigation(
                      leading: const Icon(CustomIcons.beginner),
                      trailing: trailing,
                      title: Text(i18n.app.howToUse),
                      onPressed: (context) => _onHowToUse(context, ref),
                    ),
                    SettingsTile.navigation(
                      leading: const Icon(Icons.help),
                      trailing: trailing,
                      title: Text(i18n.app.contactUs),
                      onPressed: (context) => _onContactUs(context, ref),
                    ),
                    SettingsTile.navigation(
                      leading: const Icon(CustomIcons.x_twitter),
                      trailing: trailing,
                      title: Text(i18n.app.developperTwitter),
                      onPressed: (context) =>
                          _onDevelopperTwitter(context, ref),
                    ),
                    SettingsTile.navigation(
                      leading: const Icon(Icons.lock),
                      trailing: trailing,
                      title: Text(i18n.app.privacyPolicy),
                      onPressed: (context) => _onPrivacyPolicy(context, ref),
                    ),
                    SettingsTile.navigation(
                      trailing: trailing,
                      title: Text(i18n.app.license),
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

  Future<bool> _onDevelopperTwitter(BuildContext context, WidgetRef ref) async {
    // Notes: https://pub.dev/packages/url_launcher#configuration
    return lanchUrlStringSafety(
      context,
      urlConfig.developperXApp,
      secondUrl: urlConfig.developperXWeb,
    );
  }

  Future<bool> _onPrivacyPolicy(BuildContext context, WidgetRef ref) async {
    return lanchUrlStringSafety(context, urlConfig.privacyPolicyJa);
  }

  void _onLicense(BuildContext context, WidgetRef ref) {
    const LicenseRouteData().go(context);
  }
}
