import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

class PremiumPrefixContainer extends SingleChildStatelessWidget {
  const PremiumPrefixContainer({
    super.key,
    required super.child,
    required this.premium,
  });

  final bool premium;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Row(
      children: [
        if (premium)
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(Icons.workspace_premium),
          ),
        Expanded(child: child ?? const SizedBox.shrink()),
      ],
    );
  }
}
