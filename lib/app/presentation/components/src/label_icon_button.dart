import 'package:flutter/material.dart';

class LabelIconButton extends StatelessWidget {
  const LabelIconButton({
    super.key,
    this.onPressed,
    required this.label,
    this.size = 32,
    required this.iconData,
    this.color,
  });

  final VoidCallback? onPressed;
  final Text label;
  final double size;
  final IconData iconData;
  final Color? color;

  void _handleTap() {
    if (onPressed != null) {
      onPressed!();
    }
  }

  @override
  Widget build(BuildContext context) {
    final iconColor = color ?? Theme.of(context).colorScheme.primary;
    return InkWell(
      onTap: _handleTap,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Icon(
              iconData,
              size: size,
              color: iconColor,
            ),
            label,
          ],
        ),
      ),
    );
  }
}
