import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

class PagePadding extends SingleChildStatelessWidget {
  const PagePadding({super.key, super.child});

  static const EdgeInsets padding = EdgeInsets.all(8);

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    // 全画面共通で利用するPadding設定
    return Padding(
      padding: padding,
      child: child,
    );
  }
}
