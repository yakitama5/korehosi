import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_sum_price.freezed.dart';

/// 月間合計金額のサマリ
@freezed
class MonthlySumPrice with _$MonthlySumPrice {
  const factory MonthlySumPrice({
    required DateTime yearMonth,
    required int sumPrice,
    required int count,
  }) = _MonthlySumPrice;
}
