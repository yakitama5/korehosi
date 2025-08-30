import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../hooks/importer.dart';

class TextWithLabel extends HookWidget {
  const TextWithLabel(this.text, {super.key, this.label});

  final String? text;
  final String? label;

  @override
  Widget build(BuildContext context) {
    final textTheme = useTextTheme();

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
