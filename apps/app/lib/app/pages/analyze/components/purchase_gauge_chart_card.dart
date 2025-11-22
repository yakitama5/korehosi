import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/analyze/components/chart_card.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/analyze.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/analyze.dart';

/// 購入率を表すCard
class PurchaseGaugeChartCard extends HookConsumerWidget {
  const PurchaseGaugeChartCard({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(buyedRateProvider)
        .when(
          data: (itemBuyedRate) {
            final percent = itemBuyedRate.buyedRate * 100.0;

            return ChartCard(
              title: i18n.analyze.analyzePage.purchaseRate,
              iconData: Icons.pie_chart,
              onTap: onTap,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GaugeChart(value: percent, radius: 80),
                  _BuyedItemCount(itemBuyedRate),
                ],
              ),
            );
          },
          error: ErrorView.new,
          loading: () => const ShimmerWidget.rectangular(
            height: 280,
          ),
        );
  }
}

class _BuyedItemCount extends HookConsumerWidget {
  const _BuyedItemCount(this.itemBuyedRate);

  final ItemBuyedRate itemBuyedRate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Icon(
          Icons.shopping_cart,
          size: 32,
          color: Theme.of(context).colorScheme.secondary,
        ),
        Text(
          i18n.analyze.analyzePage.format.fraction(
            molecule: itemBuyedRate.buyedItemCount,
            denominator: itemBuyedRate.itemCount,
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
