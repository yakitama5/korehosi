import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/state/locale_provider.dart';

class ItemizedText extends StatelessWidget {
  const ItemizedText(this.texts, {super.key});

  final List<Text> texts;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: texts
          .map(
            _ItemizedTextRow.new,
          )
          .toList(),
    );
  }
}

class _ItemizedTextRow extends HookConsumerWidget {
  const _ItemizedTextRow(this.text, {super.key});

  final Text text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.bullet,
          style: text.style,
        ),
        Expanded(child: text),
      ],
    );
  }
}
