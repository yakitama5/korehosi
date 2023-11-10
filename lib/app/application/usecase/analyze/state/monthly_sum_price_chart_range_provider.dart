import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'monthly_sum_price_chart_range_provider.g.dart';

/// 月間合計金額グラフの範囲
@riverpod
class MonthlySumPriceChartRange extends _$MonthlySumPriceChartRange {
  @override
  (double, double) build() {
    // 現在から6ヶ月分表示
    return (-5, 0);
  }

  void prev() {
    state = (state.$1 - 6, state.$1 - 1);
  }

  void next() {
    state = (state.$2 + 1, state.$2 + 6);
  }
}
