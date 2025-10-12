import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';

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
        Text(text ?? i18n.app.unset, style: textTheme.bodyLarge),
      ],
    );
  }
}
