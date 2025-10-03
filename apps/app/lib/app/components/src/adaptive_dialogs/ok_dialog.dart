import 'package:flutter/material.dart';
import 'package:flutter_app/app/components/src/adaptive_dialogs/adaptive_action.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packages_application/common.dart';

/// 「OK」をアクションに持つダイアログ
class OkDialog extends HookWidget {
  const OkDialog({
    super.key,
    this.title,
    this.message,
    this.okLabel,
    this.icon,
  });

  final Widget? icon;
  final String? title;
  final String? message;
  final String? okLabel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      icon: icon,
      title: Text(title ?? ''),
      content: Text(message ?? ''),
      actions: [
        AdaptiveAction(
          child: Text(okLabel ?? i18n.app.ok),
          onPressed: () => Navigator.pop(context, DialogResult.ok),
        ),
      ],
    );
  }
}
