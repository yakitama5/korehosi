import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../../application/model/dialog_result.dart';
import '../../../application/state/locale_provider.dart';
import '../../../application/usecase/user/state/auth_status_provider.dart';
import '../../../application/usecase/user/user_usecase.dart';
import '../../components/importer.dart';
import '../../theme/importer.dart';
import '../presentation_mixin.dart';

class AccountPage extends HookConsumerWidget with PresentationMixin {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final colorScheme = Theme.of(context).colorScheme;
    final authStatusValue = ref.watch(authStatusProvider).value;

    final trailing = context.themeData.isCupertinoPlatform
        ? const Icon(Icons.arrow_forward_ios_rounded)
        : null;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.account),
      ),
      body: NullSafetyBuilder(
        object: authStatusValue,
        builder: (authStatus) => ThemedSettingsList(
          sections: [
            SettingsSection(
              title: Text(l10n.accountLink),
              tiles: [
                SettingsTile.switchTile(
                  leading: const GoogleIcon(),
                  title: Text(l10n.google),
                  initialValue: authStatus.linkedGoogle,
                  onToggle: (value) => _onToggleGoogle(context, ref, value),
                ),
                SettingsTile.switchTile(
                  leading: Icon(
                    MdiIcons.apple,
                    color: colorScheme.onBackground,
                  ),
                  title: Text(l10n.apple),
                  initialValue: authStatus.linkedApple,
                  onToggle: (value) => _onToggleApple(context, ref, value),
                ),
              ],
            ),
            SettingsSection(
              title: Text(l10n.other),
              tiles: [
                // 連携していないユーザーはログアウトしても復帰できないので退会オンリー
                if (!authStatus.isAnonymous)
                  SettingsTile.navigation(
                    leading: const Icon(Icons.logout),
                    trailing: trailing,
                    title: Text(l10n.logout),
                    onPressed: (context) => _onLogout(context, ref),
                  ),
                SettingsTile.navigation(
                  leading: Icon(Icons.delete, color: colorScheme.error),
                  trailing: trailing,
                  title: Text(l10n.deleteAccount),
                  onPressed: (context) => _onDeleteAccount(context, ref),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onToggleGoogle(
    BuildContext context,
    WidgetRef ref,
    bool value,
  ) =>
      execute(
        context,
        action: () {
          if (value) {
            return ref.read(userUsecaseProvider).signInWithGoogle();
          } else {
            return ref.read(userUsecaseProvider).unlinkWithGoogle();
          }
        },
      );

  Future<void> _onToggleApple(
    BuildContext context,
    WidgetRef ref,
    bool value,
  ) =>
      execute(
        context,
        action: () {
          if (value) {
            return ref.read(userUsecaseProvider).signInWithApple();
          } else {
            return ref.read(userUsecaseProvider).unlinkWithApple();
          }
        },
      );

  Future<void> _onLogout(BuildContext context, WidgetRef ref) => execute(
        context,
        action: () => ref.read(userUsecaseProvider).signOut(),
      );

  Future<void> _onDeleteAccount(BuildContext context, WidgetRef ref) async {
    // 削除確認
    final l10n = ref.read(l10nProvider);
    final result = await showAdaptiveOkCancelDialog(
      context,
      title: l10n.deleteAccountConfirmTitle,
      message: l10n.deleteAccountConfirmMessage,
    );
    if (result != DialogResult.ok) {
      return;
    }

    // 削除処理
    if (context.mounted) {
      return execute(
        context,
        action: () => ref.read(userUsecaseProvider).delete(),
      );
    }
  }
}
