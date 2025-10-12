import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packages_designsystem/i18n.dart';

/// 編集用のアイコンボタン
class EditIconButton extends HookWidget {
  const EditIconButton({super.key, required this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.edit),
      tooltip: commonI18n.common.edit,
    );
  }
}
