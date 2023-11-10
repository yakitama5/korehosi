import 'dart:math';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../extension/date_time_extension.dart';
import 'monthly_sum_price_chart_range_provider.dart';

part 'monthly_sum_price_chart_date_range_provider.g.dart';

@riverpod
DateTimeRange monthlySumPriceChartDateRange(
  MonthlySumPriceChartDateRangeRef ref,
) {
  // 常に最大値を一定する表示
  // final indexRange = ref.watch(sumPriceLinerXRangeProvider);
  // final from = min(indexRange.$1, -5);
  // final now = DateTime.now().firstDayOfTheMonth;
  // return DateTimeRange(start: now.addMonth(from.toInt()), end: now);

  // 最大値が期間によって異なる表示
  final indexRange = ref.watch(monthlySumPriceChartRangeProvider);
  final from = min(indexRange.$1, -5);
  final to = min(indexRange.$2, 0);
  final now = DateTime.now().firstDayOfTheMonth;
  return DateTimeRange(
    start: now.addMonth(from.toInt()),
    end: now.addMonth(to.toInt()),
  );
}
