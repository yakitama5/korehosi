import 'package:flutter/material.dart';

import '../../../theme/importer.dart';

class EmptyItemImage extends StatelessWidget {
  const EmptyItemImage({
    super.key,
    this.radius,
    this.iconData,
  });

  final BorderRadius? radius;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;

    return Ink(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: colorScheme.surfaceVariant,
        borderRadius: radius,
      ),
      child: Icon(iconData, size: 48),
    );
  }
}
