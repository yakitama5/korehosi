import 'package:family_wish_list/app/presentation/hooks/src/use_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../hooks/src/use_l10n.dart';

/// 削除ボタン
class DeleteButton extends HookWidget {
  const DeleteButton({super.key, required this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();
    final colorScheme = useColorScheme();

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
