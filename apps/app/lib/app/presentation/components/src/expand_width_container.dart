import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

class ExpandWidthContainer extends SingleChildStatelessWidget {
  const ExpandWidthContainer({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return SizedBox(
      width: double.infinity,
      child: child,
    );
  }
}
