import 'package:fl_chart/fl_chart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/analyze.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'monthly_sum_price_chart_spots_provider.g.dart';

/// 分析で利用する月別の購入金額のグラフデータを管理
@riverpod
Future<List<FlSpot>> monthlySumPriceChartSpots(Ref ref) async {
  // 集計する期間のデータを取得
  final range = ref.watch(monthlyTotalsYearMonthRangeNotifierProvider);
  final monthlyTotals = await ref.watch(
    monthlyTotalsPurchasesProvider(range: range).future,
  );

  // 各軸用のデータに変換
  return monthlyTotals.monthlyTotals.map((e) {
    final x = (e.yearMonth.year * 100 + e.yearMonth.month).toDouble();
    final y = e.totalPrice.toDouble();
    return FlSpot(x, y);
  }).toList();
}
