import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/state/locale_provider.dart';

class TextWithLabel extends HookConsumerWidget {
  const TextWithLabel(this.text, {super.key, this.label});

  final String? text;
  final String? label;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final l10n = ref.watch(l10nProvider);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label ?? '', style: textTheme.labelMedium),
        Text(text ?? l10n.unset, style: textTheme.bodyLarge),
      ],
    );
  }
}
