import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgAssetImage extends StatelessWidget {
  const SvgAssetImage({
    super.key,
    required this.path,
    this.replaceColors,
    this.width,
    this.height,
  });

  final String path;
  final List<(Color oldColor, Color newColor)>? replaceColors;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final imageFuture = DefaultAssetBundle.of(context).loadString(path);
    return FutureBuilder<String>(
      future: imageFuture,
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return Container();
        }

        // HACK(yakitama5): とりあえず汚く作ったので、リファクタリング
        var blob = snapshot.data!;
        replaceColors?.forEach((replaceColor) {
          blob = blob
              .replaceAll(
                toColorUpperCode(replaceColor.$1),
                toColorUpperCode(replaceColor.$2),
              )
              .replaceAll(
                toColorLowerCode(replaceColor.$1),
                toColorLowerCode(replaceColor.$2),
              );
        });

        // Note: https://github.com/dnfield/flutter_svg/issues/372#issuecomment-886767115
        return SvgPicture.string(
          blob,
          width: width,
          height: height,
        );
      },
    );
  }

  String toColorUpperCode(Color color) {
    final hexa = color.value.toRadixString(16).toUpperCase();
    return '#${hexa.substring(hexa.length - 6, hexa.length).padLeft(6, '0')}';
  }

  String toColorLowerCode(Color color) {
    final hexa = color.value.toRadixString(16).toLowerCase();
    return '#${hexa.substring(hexa.length - 6, hexa.length).padLeft(6, '0')}';
  }
}
