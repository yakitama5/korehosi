import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

class UnfocusOnTap extends SingleChildStatelessWidget {
  const UnfocusOnTap({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    // テキストフィール外をタップでフォーカスを外す
    // Note: https://qiita.com/kokogento/items/bbc7300e010f19528ede
    // HACK(yakitama5): TextFieldでサポートされたやり方に変更する
    // https://twitter.com/kabochapo/status/1720790536783839543
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: child,
    );
  }
}
