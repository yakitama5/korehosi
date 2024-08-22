import 'package:flutter/material.dart';

class SliverChipsDelegate extends SliverPersistentHeaderDelegate {
  const SliverChipsDelegate({
    required this.chips,
    required this.safeAreaPadding,
  });

  final List<Widget>? chips;
  final EdgeInsets safeAreaPadding;

  static const _topPadding = 8;

  @override
  double get minExtent => kToolbarHeight + safeAreaPadding.top + _topPadding;

  @override
  double get maxExtent => kToolbarHeight + safeAreaPadding.top + _topPadding;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final colorScheme = Theme.of(context).colorScheme;

        final barColor = shrinkOffset > 0
            ? colorScheme.surfaceContainer
            : colorScheme.surface;

        return Container(
          alignment: Alignment.bottomLeft,
          color: barColor,
          height: constraints.maxHeight,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: chips ?? [],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  bool shouldRebuild(SliverChipsDelegate oldDelegate) {
    return chips != oldDelegate.chips;
  }
}
