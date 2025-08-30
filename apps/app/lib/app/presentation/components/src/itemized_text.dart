import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ItemizedText extends StatelessWidget {
  const ItemizedText(this.texts, {super.key});

  final List<Text> texts;

  @override
  Widget build(BuildContext context) {
    return Column(children: texts.map(_ItemizedTextRow.new).toList());
  }
}

class _ItemizedTextRow extends HookWidget {
  const _ItemizedTextRow(this.text, {super.key});

  final Text text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(i18n.app.bullet, style: text.style),
        Expanded(child: text),
      ],
    );
  }
}
