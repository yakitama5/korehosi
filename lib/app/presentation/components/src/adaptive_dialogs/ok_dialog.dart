import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../application/model/dialog_result.dart';
import '../../../../application/state/locale_provider.dart';
import 'adaptive_action.dart';

/// 「OK」をアクションに持つダイアログ
class OkDialog extends HookConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return AlertDialog.adaptive(
      icon: icon,
      title: Text(title ?? ''),
      content: Text(message ?? ''),
      actions: [
        AdaptiveAction(
          child: Text(okLabel ?? l10n.ok),
          onPressed: () => Navigator.pop(context, DialogResult.ok),
        ),
      ],
    );
  }
}
