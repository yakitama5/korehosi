import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../application/model/dialog_result.dart';
import '../../../../application/state/locale_provider.dart';
import 'adaptive_action.dart';

class OkCancelDialog extends HookConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

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
