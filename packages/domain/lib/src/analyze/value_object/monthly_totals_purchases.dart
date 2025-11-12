import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/src/analyze/value_object/monthly_totals.dart';

part 'monthly_totals_purchases.freezed.dart';

/// 月間合計金額のサマリ
@freezed
abstract class MonthlyTotalsPurchases with _$MonthlyTotalsPurchases {
  const factory MonthlyTotalsPurchases({
    required List<MonthlyTotals> monthlyTotals,
    required int allTimeTotalPrice,
  }) = _MonthlyTotalsPurchases;
}
