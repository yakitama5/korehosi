import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/src/common/extension/date_time_extension.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'monthly_sum_price_chart_range_provider.dart';

part 'monthly_sum_price_chart_date_range_provider.g.dart';

/// 分析で利用する月別の購入金額の日付範囲を管理
@riverpod
DateTimeRange monthlySumPriceChartDateRange(Ref ref) {
  // 常に最大値を一定にする場合はこちらの表示方法
  final indexRange = ref.watch(monthlySumPriceChartRangeProvider);
  final from = min(indexRange.$1, -5);
  final now = DateTime.now().firstDayOfTheMonth;
  return DateTimeRange(start: now.addMonth(from.toInt()), end: now);

  // 最大値が期間によって異なる表示
  // final indexRange = ref.watch(monthlySumPriceChartRangeProvider);
  // final from = min(indexRange.$1, -5);
  // final to = min(indexRange.$2, 0);
  // final now = DateTime.now().firstDayOfTheMonth;
  // return DateTimeRange(
  //   start: now.addMonth(from.toInt()),
  //   end: now.addMonth(to.toInt()),
  // );
}
