import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/analyze/components/chart_card.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/analyze.dart';
import 'package:packages_designsystem/widgets.dart';

/// 購入率を表すCard
class PurchaseGaugeChartCard extends HookConsumerWidget {
  const PurchaseGaugeChartCard({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final percent = ref.watch(buyedRateProvider).value;
    // 一瞬なのでローディング表示は行わない
    if (percent == null) {
      return const SizedBox.shrink();
    }

    return ChartCard(
      title: i18n.analyze.analyzePage.purchaseRate,
      iconData: Icons.pie_chart,
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GaugeChart(value: percent, radius: 80),
          const _BuyedItemCount(),
        ],
      ),
    );
  }
}

class _BuyedItemCount extends HookConsumerWidget {
  const _BuyedItemCount();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(analyzeBuyedCountProvider).value;
    final totalCount = ref.watch(
      analyzeSourceItemsProvider.select((value) => value.value?.length),
    );
    if (count == null || totalCount == null) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        Icon(
          Icons.shopping_cart,
          size: 32,
          color: Theme.of(context).colorScheme.secondary,
        ),
        Text(
          i18n.analyze.analyzePage.format.fraction(
            molecule: count,
            denominator: totalCount,
          ),
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          i18n.analyze.analyzePage.purchased,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
