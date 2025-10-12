import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packages_designsystem/i18n.dart';

/// 保存ボタン
class SaveButton extends HookWidget {
  const SaveButton({super.key, required this.onPressesd});
  final VoidCallback? onPressesd;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressesd,
      child: Text(commonI18n.common.save),
    );
  }
}
