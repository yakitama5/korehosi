import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/extension/date_time_extension.dart';
import '../../../application/extension/number_extension.dart';
import '../../../application/state/locale_provider.dart';
import '../../../application/usecase/analyze/state/monthly_sum_price_chart_range_provider.dart';
import '../../../application/usecase/analyze/state/monthly_sum_price_chart_spots_provider.dart';
import '../../../application/usecase/item/state/current_group_items_provider.dart';
import '../../../application/usecase/purchase/state/buyed_purchase_count_provider.dart';
import '../../../application/usecase/purchase/state/buyed_rate_provider.dart';
import '../../../application/usecase/purchase/state/buyed_sum_price.dart';
import '../../components/importer.dart';
import '../../theme/importer.dart';

/// 「ふりかえり」画面
class AnalyzePage extends HookConsumerWidget {
  const AnalyzePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.analyze),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: PagePadding(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _PurchaseDonutChartCard(),
                Gap(16),
                _SumPriceCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// 購入率を表すCard
class _PurchaseDonutChartCard extends HookConsumerWidget {
  const _PurchaseDonutChartCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final textTheme = Theme.of(context).textTheme;
    final percent = ref.watch(buyedRateProvider).value;
    // 一瞬なのでローディング表示は行わない
    if (percent == null) {
      return const SizedBox.shrink();
    }

    // TODO(yakitama5): GooglePlayConsoleを元にレイアウトを作り直す
    return ElevatedCard(
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.pie_chart),
              const Gap(4),
              Text(l10n.purchaseRate, style: textTheme.titleMedium),
            ],
          ),
          const Gap(4),
          PagePadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GaugeChart(
                      value: percent,
                      radius: 80,
                    ),
                    const _BuyedItemCount(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BuyedItemCount extends HookConsumerWidget {
  const _BuyedItemCount();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final count = ref.watch(buyedCountProvider).value;
    final totalCount = ref.watch(
      currentGroupItemsProvider.select((value) => value.value?.length),
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
          l10n.formatFraction(count, totalCount),
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          l10n.purchased,
          style: TextStyle(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

/// 購入金額の合計を表すCard
class _SumPriceCard extends HookConsumerWidget {
  const _SumPriceCard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final textTheme = Theme.of(context).textTheme;
    final price = ref.watch(buyedSumPriceProvider).value;
    final currencyPrice = price?.formatCurrency(locale: l10n.localeName);
    final spots = ref.watch(monthlySumPriceChartSpotsProvider).value;
    // 一瞬なのでローディング表示は行わない
    if (currencyPrice == null || spots == null) {
      return const SizedBox.shrink();
    }

    return ElevatedCard(
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.show_chart),
              const Gap(4),
              Text(l10n.purchasePrice, style: textTheme.titleMedium),
            ],
          ),
          const Gap(4),
          PagePadding(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    currencyPrice,
                    style: textTheme.headlineLarge,
                  ),
                ),
                const Gap(16),
                SizedBox(
                  height: 240,
                  child: _TotalPriceLinerChart(spots: spots),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// 購入金額の合計を表す折れ線グラフ
class _TotalPriceLinerChart extends HookConsumerWidget {
  const _TotalPriceLinerChart({required this.spots});

  final List<FlSpot> spots;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    final range = ref.watch(monthlySumPriceChartRangeProvider);
    final l10n = ref.watch(l10nProvider);

    return Stack(
      children: [
        GestureDetector(
          onHorizontalDragEnd: (details) {
            final notifier =
                ref.read(monthlySumPriceChartRangeProvider.notifier);
            if (details.primaryVelocity == null) {
              return;
            }
            if (details.primaryVelocity! < -100) {
              notifier.next();
            }
            if (details.primaryVelocity! > 100) {
              notifier.prev();
            }
          },
          child: LineChart(
            LineChartData(
              // マテリアルカラーに沿って色を変更
              backgroundColor: colorScheme.surface,
              borderData:
                  FlBorderData(border: Border.all(color: colorScheme.outline)),

              // ラベルは下の期間表示と右の値段表示のみ
              titlesData: FlTitlesData(
                rightTitles: buildRightTitles(context, ref),
                bottomTitles: buildBottomTitles(context, ref),

                // ラベル非表示
                leftTitles: const AxisTitles(),
                topTitles: const AxisTitles(),
              ),

              // 期間は変更可能
              minX: range.$1,
              maxX: range.$2,

              // 実際の線グラフ
              lineBarsData: [
                LineChartBarData(
                  isStrokeCapRound: true,
                  color: colorScheme.primary,
                  spots: spots,
                ),
              ],

              // 切り出し設定
              clipData: const FlClipData.all(),

              // Tooltip周り
              lineTouchData: LineTouchData(
                touchTooltipData: LineTouchTooltipData(
                  tooltipBgColor: colorScheme.surfaceContainer,
                  tooltipRoundedRadius: 12,
                  getTooltipItems: (touchedSpots) => touchedSpots
                      .map(
                        (e) => LineTooltipItem(
                          // 小数点は切り捨てて表示
                          e.y.formatCurrency(locale: l10n.localeName),
                          textTheme.bodyMedium!
                              .copyWith(color: colorScheme.onSurfaceVariant),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),

            // アニメーション
            duration: const Duration(milliseconds: 1000),
            curve: Curves.ease,
          ),
        ),

        // グラフのコントローラー
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            icon: const Icon(
              Icons.keyboard_arrow_left_rounded,
            ),
            tooltip: l10n.prev,
            onPressed: () =>
                ref.read(monthlySumPriceChartRangeProvider.notifier).prev(),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 56),
            child: IconButton(
              icon: const Icon(Icons.keyboard_arrow_right_rounded),
              tooltip: l10n.next,
              onPressed: () =>
                  ref.read(monthlySumPriceChartRangeProvider.notifier).next(),
            ),
          ),
        ),
      ],
    );
  }

  /// グラフ右側のラベル郡を生成する.
  AxisTitles buildRightTitles(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final textTheme = Theme.of(context).textTheme;

    return AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 56,
        getTitlesWidget: (value, meta) {
          final currency = value.formatCurrency(
            locale: l10n.localeName,
          );

          return SideTitleWidget(
            axisSide: meta.axisSide,
            child: Text(
              currency,
              style: textTheme.labelMedium,
            ),
          );
        },
      ),
    );
  }

  /// グラフ下側のラベル郡を生成する.
  AxisTitles buildBottomTitles(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final textTheme = Theme.of(context).textTheme;
    final now = DateTime.now();

    return AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: (index, meta) {
          // 現在日付からの差分を求めて、年月を割り出す
          final dt = now.addMonth(index.toInt());
          return SideTitleWidget(
            axisSide: meta.axisSide,
            child: Text(
              l10n.formatMonth(dt.month),
              style: textTheme.labelLarge,
            ),
          );
        },
      ),
    );
  }
}
