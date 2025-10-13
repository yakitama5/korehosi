import 'package:flutter/material.dart';
import 'package:packages_designsystem/i18n.dart';

class TextWithLabel extends StatelessWidget {
  const TextWithLabel(this.text, {super.key, this.label});

  final String? text;
  final String? label;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label ?? '', style: textTheme.labelMedium),
        Text(text ?? commonI18n.common.unset, style: textTheme.bodyLarge),
      ],
    );
  }
}
