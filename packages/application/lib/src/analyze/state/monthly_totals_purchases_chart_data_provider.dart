import 'package:fl_chart/fl_chart.dart';
import 'package:packages_application/analyze.dart';
import 'package:packages_application/common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'monthly_totals_purchases_chart_data_provider.g.dart';

/// 分析で利用する月別の購入金額のグラフデータを管理
@riverpod
Future<MonthlyTotalsPurchasesChartData> monthlyTotalsPurchasesChartData(
  Ref ref,
) async {
  // 集計する期間のデータを取得
  final range = ref.watch(monthlyTotalsYearMonthRangeProvider);
  final monthlyTotals = await ref.watch(
    monthlyTotalsPurchasesProvider(range: range).future,
  );

  // 各軸用のデータに変換
  final now = DateTime.now();
  final spots = monthlyTotals.monthlyTotals.map((e) {
    // X軸は現在日時との差月
    final dt = e.yearMonth.toDateTime();
    final x = now.diffMonth(dt).toDouble();
    // Y軸は合計金額
    final y = e.totalPrice.toDouble();
    return FlSpot(x, y);
  }).toList();

  return MonthlyTotalsPurchasesChartData(
    monthlyTotalsPurchases: monthlyTotals,
    spots: spots,
  );
}
