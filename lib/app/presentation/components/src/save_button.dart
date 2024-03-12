import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../hooks/importer.dart';

/// 保存ボタン
class SaveButton extends HookWidget {
  const SaveButton({super.key, required this.onPressesd});
  final VoidCallback? onPressesd;

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();

    return FilledButton(
      onPressed: onPressesd,
      child: Text(l10n.save),
    );
  }
}
