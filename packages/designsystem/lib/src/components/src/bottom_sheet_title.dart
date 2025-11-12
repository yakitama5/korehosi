import 'package:flutter/material.dart';

/// BottomSheetColumnで利用するタイトル用のWidget
class BottomSheetTitleText extends StatelessWidget {
  const BottomSheetTitleText(this.text, {super.key});

  final String? text;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Text(text ?? '', style: textTheme.titleMedium),
    );
  }
}
