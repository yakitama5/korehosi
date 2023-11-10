import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/state/locale_provider.dart';

/// 編集用のアイコンボタン
class EditIconButton extends HookConsumerWidget {
  const EditIconButton({super.key, required this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.edit),
      tooltip: l10n.edit,
    );
  }
}
