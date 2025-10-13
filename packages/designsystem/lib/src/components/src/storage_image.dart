import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:packages_application/common.dart';
import 'package:shimmer/shimmer.dart';

class StorageImage extends HookConsumerWidget {
  const StorageImage({super.key, required this.imagePath});

  final String? imagePath;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncImageUrl = ref.watch(imageUrlProvider(imagePath));

    return asyncImageUrl.when(
      data: (imageUrl) {
        return imageUrl == null
            ? const _EmptyWidget()
            : _Image(imageUrl: imageUrl);
      },
      error: (error, stackTrace) => const _ErrorEidget(),
      loading: _LoadingWidget.new,
    );
  }
}

class _Image extends HookConsumerWidget {
  const _Image({required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      progressIndicatorBuilder: (context, url, progress) =>
          const _LoadingWidget(),
      errorWidget: (context, url, error) => const _ErrorEidget(),
    );
  }
}

class _LoadingWidget extends HookConsumerWidget {
  const _LoadingWidget();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;

    return Shimmer.fromColors(
      baseColor: colorScheme.primaryContainer.withAlpha(50),
      highlightColor: colorScheme.surface,
      period: const Duration(milliseconds: 2000),
      child: const SizedBox.expand(
        // 何色でもいい(色指定さえあればいい)
        child: ColoredBox(color: Colors.white),
      ),
    );
  }
}

class _ErrorEidget extends HookConsumerWidget {
  const _ErrorEidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Icon(MdiIcons.imageBroken);
  }
}

class _EmptyWidget extends HookConsumerWidget {
  const _EmptyWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Icon(MdiIcons.imageOff);
  }
}
