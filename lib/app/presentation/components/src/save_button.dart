import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/state/locale_provider.dart';

/// 保存ボタン
class SaveButton extends HookConsumerWidget {
  const SaveButton({super.key, required this.onPressesd});
  final VoidCallback? onPressesd;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return FilledButton(
      onPressed: onPressesd,
      child: Text(l10n.save),
    );
  }
}
