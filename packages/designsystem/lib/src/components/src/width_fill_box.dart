import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

class WidthFillBox extends SingleChildStatelessWidget {
  const WidthFillBox({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    if (child == null) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      width: double.infinity,
      child: child,
    );
  }
}
