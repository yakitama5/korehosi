import 'package:flutter/material.dart';
import 'package:flutter_app/app/components/src/adaptive_dialogs/adaptive_action.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packages_application/common.dart';

/// 「OK or Cancel」をアクションに持つダイアログ
class OkCancelDialog extends HookWidget {
  const OkCancelDialog({
    super.key,
    this.title,
    this.message,
    this.okLabel,
    this.cancelLabel,
  });

  final String? title;
  final String? message;
  final String? okLabel;
  final String? cancelLabel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(title ?? ''),
      content: Text(message ?? ''),
      actions: [
        AdaptiveAction(
          child: Text(cancelLabel ?? i18n.app.cancel),
          onPressed: () => Navigator.pop(context, DialogResult.cancel),
        ),
        AdaptiveAction(
          child: Text(okLabel ?? i18n.app.ok),
          onPressed: () => Navigator.pop(context, DialogResult.ok),
        ),
      ],
    );
  }
}
