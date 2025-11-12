import 'package:flutter/material.dart';

class ItemsEmptyImage extends StatelessWidget {
  const ItemsEmptyImage({super.key, required this.width, required this.height});

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return SizedBox(
      width: width,
      height: height,
      child: ColoredBox(color: cs.surfaceContainer),
    );
  }
}
