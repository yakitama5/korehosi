import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

/// OKボタンを押すでしか閉じることが出来ないダイアログ
Future<void> showOkBarrierDismissibleDialog(
  BuildContext context, {
  Widget? icon,
  String? title,
  String? message,
  String? okLabel,
  required VoidCallback onOk,
}) =>
    showAdaptiveDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) => _OkDialog(
        icon: icon,
        title: title,
        message: message,
        okLabel: okLabel,
        onOk: onOk,
      ),
    );

/// 「OK」をアクションに持つダイアログ
class _OkDialog extends StatelessWidget {
  const _OkDialog({
    this.title,
    this.message,
    this.okLabel,
    this.icon,
    required this.onOk,
  });

  final Widget? icon;
  final String? title;
  final String? message;
  final String? okLabel;
  final VoidCallback onOk;

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      icon: icon,
      title: Text(title ?? ''),
      content: Text(message ?? ''),
      actions: [
        _AdaptiveAction(
          // TODO(yakitama5): 多言語化対応
          child: Text(okLabel ?? 'OK'),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}

/// アダプティブダイアログで利用するアクション
/// プラットフォームに応じたアダプティブレイアウトを提供
class _AdaptiveAction extends SingleChildStatelessWidget {
  const _AdaptiveAction({
    required super.child,
    required this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) =>
      switch (Theme.of(context).platform) {
        TargetPlatform.android ||
        TargetPlatform.fuchsia ||
        TargetPlatform.linux ||
        TargetPlatform.windows =>
          TextButton(
            onPressed: onPressed,
            child: child ?? const SizedBox.shrink(),
          ),
        TargetPlatform.iOS || TargetPlatform.macOS => CupertinoDialogAction(
            onPressed: onPressed,
            child: child ?? const SizedBox.shrink(),
          ),
      };
}
