import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ItemImageCarouselSlider extends StatelessWidget {
  const ItemImageCarouselSlider({super.key, this.items});

  final List<Widget>? items;

  @override
  Widget build(BuildContext context) {
    // 画像サイズを16:9になるように自動調整する
    final viewportFraction = ResponsiveValue(
      context,
      defaultValue: 0.8,
      conditionalValues: [
        const Condition.equals(name: TABLET, value: 0.6),
        const Condition.equals(name: DESKTOP, value: 0.4),
        const Condition.largerThan(name: DESKTOP, value: 0.2),
      ],
    ).value;
    final viewWidth =
        (MediaQuery.sizeOf(context).width -
            (PagePadding.padding.left + PagePadding.padding.right)) *
        viewportFraction;
    final carouselHeight = (viewWidth / 16) * 9;

    return CarouselSlider(
      options: CarouselOptions(
        height: carouselHeight,
        viewportFraction: viewportFraction,
        enableInfiniteScroll: false,
        enlargeCenterPage: true,
      ),
      items: items,
    );
  }
}
