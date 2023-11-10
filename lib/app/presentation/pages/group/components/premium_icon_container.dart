import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
            child: Icon(MdiIcons.crown),
          ),
        Expanded(child: child ?? const SizedBox.shrink()),
      ],
    );
  }
}
