import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/src/hooks/hooks.dart';

/// 削除ボタン
class DeleteButton extends HookWidget {
  const DeleteButton({super.key, required this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final colorScheme = useColorScheme();

    return IconButton(
      onPressed: onPressed,
      icon: Icon(Icons.delete, color: colorScheme.error),
      tooltip: commonI18n.common.delete,
    );
  }
}
