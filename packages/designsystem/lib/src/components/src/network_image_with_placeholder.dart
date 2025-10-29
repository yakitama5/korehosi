import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:packages_designsystem/src/components/src/shimmer_widget.dart';

class NetworkImageWithPlaceholder extends StatelessWidget {
  const NetworkImageWithPlaceholder({
    super.key,
    required this.imageUrl,
    this.semanticLabel,
  });

  static const _imageHeight = 120.0;

  final String? imageUrl;
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    // 画像指定無しの場合はダミー表示
    if (imageUrl?.isEmpty ?? true) {
      return const _EmptyImage(height: _imageHeight, width: double.infinity);
    }

    return Semantics(
      label: semanticLabel,
      child: CachedNetworkImage(
        imageUrl: imageUrl!,
        height: _imageHeight,
        width: double.infinity,
        fit: BoxFit.fitWidth,
        placeholder: (context, url) =>
            const ShimmerWidget.rectangular(height: _imageHeight),
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
