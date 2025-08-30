import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/application/config/app_config.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:store_redirect/store_redirect.dart';

import '../application/model/dialog_result.dart';
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

    ref.listen(forceUpdateProvider, (previous, next) async {
      if (next.value == true) {
        // 更新が必要な場合はダイアログを表示
        final result = await showAdaptiveOkCancelDialog(
          context,
          title: i18n.app.updateAppTitle,
          message: i18n.app.updateAppMessage,
          okLabel: i18n.app.goStore,
        );

        switch (result) {
          case DialogResult.ok:
            await StoreRedirect.redirect(
              androidAppId: appConfig.packageName,
              iOSAppId: appConfig.appStoreId,
            );
          case DialogResult.cancel:
          case null:
          // do nothing
        }
      }
    });
  }
}
