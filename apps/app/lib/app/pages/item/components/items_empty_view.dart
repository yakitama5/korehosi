import 'package:flutter/material.dart';
import 'package:flutter_app/gen/assets.gen.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:nested/nested.dart';
import 'package:packages_application/item.dart';

class ItemsEmptyListner extends SingleChildStatelessWidget {
  const ItemsEmptyListner({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return Consumer(
      builder: (_, ref, _) {
        final result = ref.watch(searchItemsProvider(page: 1));

        // 読み込み中でない かつ 0件の場合は空表示
        if (result is AsyncData && result.value?.totalCount == 0) {
          return const SliverFillRemaining(child: ItemsEmptyView());
        }

        return child ?? const SizedBox.shrink();
      },
    );
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
