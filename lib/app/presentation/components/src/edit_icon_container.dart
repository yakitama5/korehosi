import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

class EditIconContainer extends SingleChildStatelessWidget {
  const EditIconContainer({
    super.key,
    required super.child,
    this.alignment = Alignment.topRight,
  });

  final Alignment alignment;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Align(
          alignment: alignment,
          child: const Icon(Icons.edit),
        ),
        child ?? const SizedBox.shrink(),
      ],
    );
  }
}
