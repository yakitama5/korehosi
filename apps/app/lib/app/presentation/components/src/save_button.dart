import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// 保存ボタン
class SaveButton extends HookWidget {
  const SaveButton({super.key, required this.onPressesd});
  final VoidCallback? onPressesd;

  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: onPressesd, child: Text(i18n.app.save));
  }
}
