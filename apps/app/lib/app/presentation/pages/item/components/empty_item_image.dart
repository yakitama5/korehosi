import 'package:family_wish_list/app/presentation/hooks/src/use_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EmptyItemImage extends HookWidget {
  const EmptyItemImage({
    super.key,
    this.radius,
    this.iconData,
  });

  final BorderRadius? radius;
  final IconData? iconData;

  @override
  Widget build(BuildContext context) {
    final colorScheme = useColorScheme();

    return Ink(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainerHighest,
        borderRadius: radius,
      ),
      child: Icon(iconData, size: 48),
    );
  }
}
