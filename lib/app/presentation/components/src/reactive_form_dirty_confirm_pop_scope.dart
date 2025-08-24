import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nested/nested.dart';
import 'package:reactive_forms/reactive_forms.dart';

import '../../../application/model/dialog_result.dart';
import '../../hooks/src/use_l10n.dart';
import 'adaptive_dialog.dart';

class ReactiveFormDirtyConfirmPopScope extends SingleChildStatelessWidget {
  const ReactiveFormDirtyConfirmPopScope({
    super.key,
    super.child,
  });

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    if (child == null) {
      return const SizedBox.shrink();
    }

    return HookBuilder(
      builder: (context) {
        final l10n = useL10n();

        return PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, result) async {
            // Notes: 移行ガイドに沿って変更
            // https://docs.flutter.dev/release/breaking-changes/android-predictive-back#migrating-a-back-confirmation-dialog
            if (didPop) {
              return;
            }

            // final navigator = Navigator.of(context);

            // HACK(yakitama5): StatefulShellRouteが検知されない不具合が解消されたら変更する
            // NavigationBarを検知出来ないのは一旦保留
            // 内容が変更されていなければ閉じる
            final dirty = ReactiveForm.of(context)?.dirty;
            if (dirty != true) {
              Navigator.of(context).pop();
              return;
            }

            // ダイアログを表示して確認
            final result = await showAdaptiveOkCancelDialog(context,
                title: l10n.confirmDiscardChangesTitle,
                message: l10n.confirmDiscardChangesMessage,
                okLabel: l10n.discard,
                cancelLabel: l10n.notDiscard,
                useRootNavigator: false);

            // 破棄が選ばれたら画面を閉じる
            if (result == DialogResult.ok) {
              if (context.mounted) {
                Navigator.of(context).pop();
              }
            }
          },
          child: child,
        );
      },
    );
  }
}
