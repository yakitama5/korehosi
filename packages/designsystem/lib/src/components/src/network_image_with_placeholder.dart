import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:packages_designsystem/src/components/src/shimmer_widget.dart';

class NetworkImageWithPlaceholder extends StatelessWidget {
  const NetworkImageWithPlaceholder({
    super.key,
    required this.imageUrl,
    this.semanticLabel,
    this.height = double.infinity,
    this.width = double.infinity,
    this.fit,
  });

  final String? imageUrl;
  final String? semanticLabel;
  final double height;
  final double width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    // 画像指定無しの場合はダミー表示
    if (imageUrl?.isEmpty ?? true) {
      return _EmptyImage(height: height, width: width);
    }

    return Semantics(
      label: semanticLabel,
      child: CachedNetworkImage(
        imageUrl: imageUrl!,
        height: height,
        width: width,
        fit: fit,
        placeholder: (context, url) =>
            ShimmerWidget.rectangular(height: height, width: width),
      ),
    );
  }
}

class _EmptyImage extends StatelessWidget {
  const _EmptyImage({required this.width, required this.height});

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
