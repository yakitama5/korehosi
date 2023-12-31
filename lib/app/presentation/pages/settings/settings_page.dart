import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../../application/config/url_config.dart';
import '../../../application/state/locale_provider.dart';
import '../../components/importer.dart';
import '../../helper/url_launcher_helper.dart';
import '../../routes/importer.dart';
import '../../theme/importer.dart';

class SettingsPage extends HookConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final trailing = context.themeData.isCupertinoPlatform
        ? const Icon(Icons.arrow_forward_ios_rounded)
        : null;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settings),
        centerTitle: true,
      ),
      body: ThemedSettingsList(
        sections: [
          SettingsSection(
            title: Text(l10n.account),
            tiles: [
              SettingsTile.navigation(
                leading: const Icon(Icons.person),
                trailing: trailing,
                title: Text(l10n.profile),
                onPressed: (context) => _onProfile(context, ref),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.group),
                trailing: trailing,
                title: Text(l10n.group),
                onPressed: (context) => _onGroup(context, ref),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.link),
                trailing: trailing,
                title: Text(l10n.account),
                onPressed: (context) => _onAccount(context, ref),
              ),
            ],
          ),
          SettingsSection(
            title: Text(l10n.help),
            tiles: [
              SettingsTile.navigation(
                leading: const Icon(CustomIcons.beginner),
                trailing: trailing,
                title: Text(l10n.howToUse),
                onPressed: (context) => _onHowToUse(context, ref),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.help),
                trailing: trailing,
                title: Text(l10n.contactUs),
                onPressed: (context) => _onContactUs(context, ref),
              ),
              SettingsTile.navigation(
                leading: const Icon(CustomIcons.x_twitter),
                trailing: trailing,
                title: Text(l10n.developperTwitter),
                onPressed: (context) => _onDevelopperTwitter(context, ref),
              ),
              SettingsTile.navigation(
                leading: const Icon(Icons.lock),
                trailing: trailing,
                title: Text(l10n.privacyPolicy),
                onPressed: (context) => _onPrivacyPolicy(context, ref),
              ),
              SettingsTile.navigation(
                trailing: trailing,
                title: Text(l10n.license),
                onPressed: (context) => _onLicense(context, ref),
              ),
            ],
          ),
        ],
      ),
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
