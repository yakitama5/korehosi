import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/src/common/value_object/year_month.dart';

part 'monthly_totals.freezed.dart';

@freezed
abstract class MonthlyTotals with _$MonthlyTotals {
  const factory MonthlyTotals({
    required YearMonth yearMonth,
    required int totalPrice,
  }) = _MonthlyTotals;
}
