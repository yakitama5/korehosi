import 'package:flutter/material.dart';
import 'package:flutter_app/app/presentation/hooks/src/use_theme.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

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
      tooltip: i18n.app.delete,
    );
  }
}
