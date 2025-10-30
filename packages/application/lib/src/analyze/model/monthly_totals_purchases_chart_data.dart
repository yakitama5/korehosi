import 'package:fl_chart/fl_chart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/analyze.dart';

part 'monthly_totals_purchases_chart_data.freezed.dart';

@freezed
abstract class MonthlyTotalsPurchasesChartData
    with _$MonthlyTotalsPurchasesChartData {
  const factory MonthlyTotalsPurchasesChartData({
    required MonthlyTotalsPurchases monthlyTotalsPurchases,
    required List<FlSpot> spots,
  }) = _MonthlyTotalsPurchasesChartData;
}
