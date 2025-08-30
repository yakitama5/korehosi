import 'package:family_wish_list/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// 編集用のアイコンボタン
class EditIconButton extends HookWidget {
  const EditIconButton({super.key, required this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.edit),
      tooltip: i18n.app.edit,
    );
  }
}
