import 'package:flutter/material.dart';
import 'package:flutter_app/gen/assets.gen.dart';

import 'svg_asset_image.dart';

class GoogleIcon extends StatelessWidget {
  const GoogleIcon({super.key, this.size = 24});

  final double? size;

  @override
  Widget build(BuildContext context) {
    return SvgAssetImage(path: Assets.images.google, width: size, height: size);
  }
}
