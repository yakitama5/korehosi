import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'model/svg_replace_colors.dart';

class SvgAssetImage extends StatelessWidget {
  const SvgAssetImage({
    super.key,
    required this.path,
    this.replaceColors,
    this.width,
    this.height,
  });

  final String path;
  final List<SvgReplaceColors>? replaceColors;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture(
      SvgAssetLoader(
        path,
        colorMapper: _SvgColorMapper(replaceColors: replaceColors),
      ),
      width: width,
      height: height,
    );
  }

  String toColorUpperCode(Color color) {
    // https://github.com/flutter/flutter/issues/160184#issuecomment-2573822206
    // ignore: deprecated_member_use
    final hexa = color.value.toRadixString(16).toUpperCase();
    return '#${hexa.substring(hexa.length - 6, hexa.length).padLeft(6, '0')}';
  }

  String toColorLowerCode(Color color) {
    // ignore: deprecated_member_use
    final hexa = color.value.toRadixString(16).toLowerCase();
    return '#${hexa.substring(hexa.length - 6, hexa.length).padLeft(6, '0')}';
  }
}

class _SvgColorMapper implements ColorMapper {
  const _SvgColorMapper({
    this.replaceColors,
  });

  final List<SvgReplaceColors>? replaceColors;

  @override
  Color substitute(
    String? id,
    String elementName,
    String attributeName,
    Color color,
  ) {
    // 変換色が設定されていればそちらを優先して利用
    final replaceColor =
        replaceColors?.firstWhereOrNull((c) => c.rawColor == color);
    return replaceColor?.color ?? color;
  }
}
