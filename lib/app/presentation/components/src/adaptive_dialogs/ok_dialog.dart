import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../../../application/model/dialog_result.dart';
import '../../../hooks/importer.dart';
import 'adaptive_action.dart';

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
    final l10n = useL10n();

    return AlertDialog.adaptive(
      icon: icon,
      title: Text(title ?? ''),
      content: Text(message ?? ''),
      actions: [
        AdaptiveAction(
          child: Text(okLabel ?? l10n.ok),
          onPressed: () => context.pop(DialogResult.ok),
        ),
      ],
    );
  }
}
