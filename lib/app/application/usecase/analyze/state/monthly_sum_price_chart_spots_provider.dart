import 'package:fl_chart/fl_chart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../extension/date_time_extension.dart';
import '../../../extension/date_time_range_extension.dart';
import '../../purchase/state/monthly_sum_price_provider.dart.dart';
import 'monthly_sum_price_chart_date_range_provider.dart';

part 'monthly_sum_price_chart_spots_provider.g.dart';

/// 分析で利用する月別の購入金額のグラフデータを管理
@riverpod
Future<List<FlSpot>> monthlySumPriceChartSpots(
  MonthlySumPriceChartSpotsRef ref,
) async {
  // グラフ用データを取得
  final data = await ref.watch(monthlySumPriceProvider.future);

  // 月別に集計
  final now = DateTime.now().firstDayOfTheMonth;
  final range = ref.watch(monthlySumPriceChartDateRangeProvider);
  return range.mapByMonthly(
    (dt, index) {
      final monthlyData = data[dt];
      final diff = now.diffMonth(dt);
      return FlSpot(diff.toDouble(), monthlyData?.sumPrice.toDouble() ?? 0);
    },
  );
}
