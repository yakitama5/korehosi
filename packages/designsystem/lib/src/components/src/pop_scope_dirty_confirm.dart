import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:nested/nested.dart';
import 'package:packages_designsystem/i18n/strings.g.dart';

class PopScopeDirtyConfirm extends SingleChildStatelessWidget {
  const PopScopeDirtyConfirm({super.key, super.child, required this.dirty});

  final bool? dirty;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    if (child == null) {
      return const SizedBox.shrink();
    }

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        // Notes: 移行ガイドに沿って変更
        // https://docs.flutter.dev/release/breaking-changes/android-predictive-back#migrating-a-back-confirmation-dialog
        if (didPop) {
          return;
        }

        final navigator = Navigator.of(context);

        // 内容が変更されていなければ閉じる
        if (dirty != true) {
          navigator.pop();
          return;
        }

        // ダイアログを表示して確認
        final result = await showOkCancelAlertDialog(
          context: context,
          title: i18n.designsystem.confirmDiscardChanges.title,
          message: i18n.designsystem.confirmDiscardChanges.message,
          okLabel: i18n.designsystem.confirmDiscardChanges.discard,
          cancelLabel: i18n.designsystem.confirmDiscardChanges.notDiscard,
        );

        // 破棄が選ばれたら画面を閉じる
        if (result == OkCancelResult.ok) {
          navigator.pop();
        }
      },
      child: child,
    );
  }
}
