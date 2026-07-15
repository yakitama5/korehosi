import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packages_designsystem/i18n.dart';

/// 保存ボタン
class SaveButton extends HookWidget {
  const SaveButton({super.key, required this.onPressed});
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      child: Text(commonI18n.common.save),
    );
  }
}
