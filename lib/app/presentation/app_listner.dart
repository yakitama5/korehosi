import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:store_redirect/store_redirect.dart';

import '../application/model/dialog_result.dart';
import '../application/state/locale_provider.dart';
import '../application/usecase/settings/state/force_update_provider.dart';
import 'components/importer.dart';

class AppListner extends HookConsumerWidget {
  const AppListner(this.child, {super.key});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // アプリの状態を監視
    _updateCheckListner(context, ref);

    return child;
  }

  /// アプリのバージョンを監視して、バージョン確認ダイアログを表示する
  void _updateCheckListner(BuildContext context, WidgetRef ref) {
    // Web版は監視しない
    if (kIsWeb) {
      return;
    }

    ref.listen(
      forceUpdateProvider,
      (previous, next) async {
        if (next.value == true) {
          // 更新が必要な場合はダイアログを表示
          final l10n = ref.read(l10nProvider);
          final result = await showAdaptiveOkCancelDialog(
            context,
            title: l10n.updateAppTitle,
            message: l10n.updateAppMessage,
            okLabel: l10n.goStore,
          );

          switch (result) {
            case DialogResult.ok:
              await StoreRedirect.redirect();
            case DialogResult.cancel:
            case null:
            // do nothing
          }
        }
      },
    );
  }
}
