import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../components/importer.dart';

class ItemImageCarouselSlider extends HookConsumerWidget {
  const ItemImageCarouselSlider({super.key, this.items});

  final List<Widget>? items;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 画像サイズを16:9になるように自動調整する
    const defaultValue = 0.8;
    final viewportFraction = ResponsiveValue(
      context,
      defaultValue: defaultValue,
      conditionalValues: [
        Condition.equals(
          name: TABLET,
          value: 0.6,
        ),
        Condition.equals(
          name: DESKTOP,
          value: 0.4,
        ),
        Condition.largerThan(
          name: DESKTOP,
          value: 0.2,
        ),
      ],
    ).value;
    final viewWidth = (MediaQuery.sizeOf(context).width -
            (PagePadding.padding.left + PagePadding.padding.right)) *
        (viewportFraction ?? 0 + 0.2);
    final carouselHeight = (viewWidth / 16) * 9;

    return CarouselSlider(
      options: CarouselOptions(
        height: carouselHeight,
        viewportFraction: viewportFraction ?? defaultValue,
        enableInfiniteScroll: false,
        enlargeCenterPage: true,
      ),
      items: items,
    );
  }
}
