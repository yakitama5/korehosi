import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:packages_domain/designsystem.dart';
import 'package:sliver_tools/sliver_tools.dart';

typedef SwitchLayoutItemBuilder =
    Widget? Function(BuildContext context, int index);

/// 表示形式をスイッチング可能なViewBuilder
// TODO(yakitama5): アニメーション対応する
class SliverSwitchLayoutViewBuilder extends StatelessWidget {
  const SliverSwitchLayoutViewBuilder({
    super.key,
    required this.viewLayout,
    required this.itemBuilder,
    this.itemCount,
    this.gridDelegate,
    this.switchDuration = const Duration(milliseconds: 200),
  });

  final ViewLayout viewLayout;
  final SwitchLayoutItemBuilder itemBuilder;
  final int? itemCount;
  final SliverGridDelegate? gridDelegate;
  final Duration switchDuration;

  @override
  Widget build(BuildContext context) {
    return SliverAnimatedSwitcher(
      duration: switchDuration,
      child: switch (viewLayout) {
        ViewLayout.list => SliverList.separated(
          itemBuilder: itemBuilder,
          itemCount: itemCount,
          separatorBuilder: (context, index) => const Gap(8),
        ),
        ViewLayout.grid => SliverGrid.builder(
          gridDelegate:
              gridDelegate ??
              const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 240,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                childAspectRatio: 0.75,
              ),
          itemBuilder: itemBuilder,
        ),
      },
    );
  }
}
