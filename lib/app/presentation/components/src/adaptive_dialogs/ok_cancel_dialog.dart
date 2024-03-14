import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../application/model/dialog_result.dart';
import '../../../hooks/importer.dart';
import 'adaptive_action.dart';

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
    final l10n = useL10n();

    return AlertDialog.adaptive(
      title: Text(title ?? ''),
      content: Text(message ?? ''),
      actions: [
        AdaptiveAction(
          child: Text(cancelLabel ?? l10n.cancel),
          onPressed: () => Navigator.pop(context, DialogResult.cancel),
        ),
        AdaptiveAction(
          child: Text(okLabel ?? l10n.ok),
          onPressed: () => Navigator.pop(context, DialogResult.ok),
        ),
      ],
    );
  }
}
