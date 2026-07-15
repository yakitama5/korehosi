import 'package:flutter/material.dart';

class ItemsEmptyImage extends StatelessWidget {
  const ItemsEmptyImage({
    super.key,
    required this.width,
    required this.height,
    this.showAddIcon = false,
  });

  final double width;
  final double height;
  final bool showAddIcon;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    final icon = showAddIcon
        ? Center(
            child: Icon(
              Icons.add_photo_alternate_outlined,
              color: cs.onSurfaceVariant,
              size: 48,
            ),
          )
        : const SizedBox.shrink();

    return Ink(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        color: cs.surfaceContainer,
      ),
      child: icon,
    );
  }
}
