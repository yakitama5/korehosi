import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/settings/components/themed_settings_list.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:packages_application/user.dart';
import 'package:packages_designsystem/widgets.dart';

class AccountPage extends HookConsumerWidget with PresentationMixin {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = useColorScheme();
    final messages = i18n.settings.accountPage;

    final authStatus = ref.watch(authStatusProvider);

    return authStatus.when(
      data: (data) => Scaffold(
        appBar: AppBar(title: Text(messages.title)),
        body: ThemedSettingsList(
          sections: [
            SettingsSection(
              title: Text(messages.link.head),
              tiles: [
                SettingsTile.switchTile(
                  leading: const GoogleIcon(),
                  title: Text(messages.link.google),
                  initialValue: data?.linkedGoogle,
                  onToggle: (value) => _onToggleGoogle(context, ref, value),
                ),
                SettingsTile.switchTile(
                  leading: Icon(MdiIcons.apple, color: colorScheme.onSurface),
                  title: Text(messages.link.apple),
                  initialValue: data?.linkedApple,
                  onToggle: (value) => _onToggleApple(context, ref, value),
                ),
              ],
            ),
            SettingsSection(
              title: Text(messages.other.head),
              tiles: [
                // 連携していないユーザーはログアウトしても復帰できないので退会オンリー
                if (data?.isAnonymous != true)
                  SettingsTile.navigation(
                    leading: const Icon(Icons.logout),
                    title: Text(messages.other.logout),
                    onPressed: (context) => _onLogout(context, ref),
                  ),
                SettingsTile.navigation(
                  leading: Icon(Icons.delete, color: colorScheme.error),
                  title: Text(messages.other.leave),
                  onPressed: (context) => _onDeleteAccount(context, ref),
                ),
              ],
            ),
          ],
        ),
      ),
      error: ErrorView.new,
      loading: CircularProgressIndicator.new,
    );
  }

  Future<void> _onToggleGoogle(
    BuildContext context,
    WidgetRef ref,
    bool value,
  ) => execute(
    action: () {
      final usecase = ref.read(userUsecaseProvider);
      return value ? usecase.signInWithGoogle() : usecase.unlinkWithGoogle();
    },
  );

  Future<void> _onToggleApple(
    BuildContext context,
    WidgetRef ref,
    bool value,
  ) => execute(
    action: () {
      final usecase = ref.read(userUsecaseProvider);
      return value ? usecase.signInWithApple() : usecase.unlinkWithApple();
    },
  );

  Future<void> _onLogout(BuildContext context, WidgetRef ref) =>
      execute(action: () => ref.read(userUsecaseProvider).signOut());

  Future<void> _onDeleteAccount(BuildContext context, WidgetRef ref) async {
    // 削除確認
    final messages = i18n.settings.accountPage.leaveConfirmDialog;
    final result = await showOkCancelAlertDialog(
      context: context,
      title: messages.title,
      message: messages.message,
    );
    if (result != OkCancelResult.ok) {
      return;
    }

    // 削除処理
    if (context.mounted) {
      return execute(action: () => ref.read(userUsecaseProvider).delete());
    }
  }
}
