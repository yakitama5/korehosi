import 'package:flutter/material.dart';
import 'package:flutter_app/gen/assets.gen.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:nested/nested.dart';

class ItemsEmptyListner extends SingleChildStatelessWidget {
  const ItemsEmptyListner({super.key, super.child, required this.totalCount});

  final int? totalCount;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    // 0件表示
    if (totalCount == 0) {
      return const SliverFillRemaining(child: ItemsEmptyView());
    }

    return child ?? const SizedBox.shrink();
  }
}

class ItemsEmptyView extends StatelessWidget {
  const ItemsEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Gap(8),
          Lottie.asset(Assets.lottie.womanEmptyBox, height: 280),
          Text(
            i18n.item.itemsPage.itemEmpty,
            style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Gap(40),
        ],
      ),
    );
  }
}
