import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/analyze/components/chart_card.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/analyze.dart';
import 'package:packages_application/common.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/widgets.dart';

/// 月別に購入金額の合計を表すCard
class MonthlyTotalsPurchasesChartCard extends HookConsumerWidget {
  const MonthlyTotalsPurchasesChartCard({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = useTextTheme();

    // チャートデータを取得
    final data = ref.watch(monthlyTotalsPurchasesChartDataProvider).value;
    // 一瞬なのでローディング表示は行わない
    if (data == null) {
      return const SizedBox.shrink();
    }

    final currencyPrice = data.monthlyTotalsPurchases.allTimeTotalPrice
        .formatCurrency(locale: AppLocaleUtils.findDeviceLocale().languageCode);

    return ChartCard(
      onTap: onTap,
      title: i18n.analyze.analyzePage.totalPrice,
      iconData: Icons.show_chart,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(currencyPrice, style: textTheme.headlineLarge),
          ),
          const Gap(16),
          SizedBox(height: 240, child: _TotalPriceLinerChart(chartData: data)),
        ],
      ),
    );
  }
}

/// 購入金額の合計を表す折れ線グラフ
class _TotalPriceLinerChart extends HookConsumerWidget {
  const _TotalPriceLinerChart({required this.chartData});

  final MonthlyTotalsPurchasesChartData chartData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 期間を取得
    final range = ref.watch(monthlyTotalsYearMonthRangeProvider);

    final colorScheme = useColorScheme();
    final textTheme = useTextTheme();

    final now = DateTime.now();
    final minX = now.diffMonth(range.from.toDateTime()).toDouble();
    final maxX = now.diffMonth(range.to.toDateTime()).toDouble();

    return Stack(
      children: [
        GestureDetector(
          onHorizontalDragEnd: (details) {
            final notifier = ref.read(
              monthlyTotalsYearMonthRangeProvider.notifier,
            );
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
              backgroundColor: colorScheme.surfaceContainerLow,
              borderData: FlBorderData(
                border: Border.all(color: colorScheme.outline),
              ),

              // ラベルは下の期間表示と右の値段表示のみ
              titlesData: FlTitlesData(
                rightTitles: buildRightTitles(context, ref),
                bottomTitles: buildBottomTitles(context, ref),

                // ラベル非表示
                leftTitles: const AxisTitles(),
                topTitles: const AxisTitles(),
              ),

              // 期間は変更可能
              minX: minX,
              maxX: maxX,
              minY: 0,

              // 実際の線グラフ
              lineBarsData: [
                LineChartBarData(
                  isStrokeCapRound: true,
                  color: colorScheme.primary,
                  spots: chartData.spots,
                ),
              ],

              // 切り出し設定
              clipData: const FlClipData.all(),

              // Tooltip周り
              lineTouchData: LineTouchData(
                touchTooltipData: LineTouchTooltipData(
                  getTooltipColor: (group) =>
                      colorScheme.surfaceContainerHighest,
                  tooltipBorderRadius: BorderRadius.circular(12),
                  getTooltipItems: (touchedSpots) => touchedSpots
                      .map(
                        (e) => LineTooltipItem(
                          // 小数点は切り捨てて表示
                          e.y.formatCurrency(
                            locale:
                                AppLocaleUtils.findDeviceLocale().languageCode,
                          ),
                          textTheme.bodyMedium!.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
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
            icon: const Icon(Icons.keyboard_arrow_left_rounded),
            tooltip: commonI18n.common.prev,
            onPressed: () =>
                ref.read(monthlyTotalsYearMonthRangeProvider.notifier).prev(),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 56),
            child: IconButton(
              icon: const Icon(Icons.keyboard_arrow_right_rounded),
              tooltip: commonI18n.common.next,
              onPressed: () =>
                  ref.read(monthlyTotalsYearMonthRangeProvider.notifier).next(),
            ),
          ),
        ),
      ],
    );
  }

  /// グラフ右側のラベル郡を生成する.
  AxisTitles buildRightTitles(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 56,
        getTitlesWidget: (value, meta) {
          final currency = value.formatCurrency(
            locale: AppLocaleUtils.findDeviceLocale().languageCode,
          );

          return SideTitleWidget(
            meta: meta,
            child: Text(currency, style: textTheme.labelMedium),
          );
        },
      ),
    );
  }

  /// グラフ下側のラベル郡を生成する.
  AxisTitles buildBottomTitles(BuildContext context, WidgetRef ref) {
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
            meta: meta,
            child: Text(
              i18n.analyze.analyzePage.format.month(month: dt.month),
              style: textTheme.labelLarge,
            ),
          );
        },
      ),
    );
  }
}
