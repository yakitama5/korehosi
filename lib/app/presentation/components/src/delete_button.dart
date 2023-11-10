import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/state/locale_provider.dart';

/// 削除ボタン
class DeleteButton extends HookConsumerWidget {
  const DeleteButton({super.key, required this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        Icons.delete,
        color: colorScheme.error,
      ),
      tooltip: l10n.delete,
    );
  }
}
