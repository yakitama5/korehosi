import 'package:flutter/material.dart';
import 'package:packages_designsystem/src/gen/assets/assets.gen.dart';

class GoogleIcon extends StatelessWidget {
  const GoogleIcon({super.key, this.size = 24});

  final double? size;

  @override
  Widget build(BuildContext context) {
    return Assets.images.google.svg(width: size, height: size);
  }
}
