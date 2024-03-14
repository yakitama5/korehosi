import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../hooks/src/use_l10n.dart';

/// 編集用のアイコンボタン
class EditIconButton extends HookWidget {
  const EditIconButton({super.key, required this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();

    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.edit),
      tooltip: l10n.edit,
    );
  }
}
