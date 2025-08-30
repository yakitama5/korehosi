import 'package:family_wish_list/gen/assets.gen.dart';
import 'package:flutter/material.dart';

import 'svg_asset_image.dart';

class GoogleIcon extends StatelessWidget {
  const GoogleIcon({
    super.key,
    this.size = 24,
  });

  final double? size;

  @override
  Widget build(BuildContext context) {
    return SvgAssetImage(
      path: Assets.images.google,
      width: size,
      height: size,
    );
  }
}
