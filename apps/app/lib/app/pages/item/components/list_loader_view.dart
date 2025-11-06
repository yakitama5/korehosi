import 'package:flutter/material.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:shimmer/shimmer.dart';

/// ListView用の読み込み中ローダー
class ListLoaderView extends StatelessWidget {
  const ListLoaderView({super.key});

  /// アイテムの数
  static const int itemCount = 20;

  /// ダミー行の高さ
  static const double boneHeight = 16;

  /// ダミー行の数
  static const int boneItemCount = 2;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Shimmer.fromColors(
        baseColor: colorScheme.primaryContainer.withAlpha(50),
        highlightColor: colorScheme.surface,
        period: const Duration(milliseconds: 2000),
        child: ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          itemBuilder: (_, _) => const _LoaderListTile(),
          separatorBuilder: (context, _) => const Divider(color: Colors.white),
          itemCount: itemCount,
        ),
      ),
    );
  }
}

class _LoaderListTile extends StatelessWidget {
  const _LoaderListTile();

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const ImageAspectRatio(child: ColoredBox(color: Colors.white)),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var i = 0; i < ListLoaderView.boneItemCount - 1; i++)
            const LoaderBone(
              width: double.infinity,
              height: ListLoaderView.boneHeight,
            ),
          const LoaderBone(width: 96, height: ListLoaderView.boneHeight),
        ],
      ),
    );
  }
}

class LoaderBone extends StatelessWidget {
  const LoaderBone({super.key, this.width, this.height});

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: SizedBox(
        width: width,
        height: height,
        child: const ColoredBox(color: Colors.white),
      ),
    );
  }
}
