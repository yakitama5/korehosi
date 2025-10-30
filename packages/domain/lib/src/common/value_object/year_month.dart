// ignore_for_file: unused_element

import 'package:freezed_annotation/freezed_annotation.dart';

part 'year_month.freezed.dart';

typedef YearMonthMapper<T> = T Function(YearMonth yearMonth, int index);

/// 年月
@freezed
abstract class YearMonth with _$YearMonth {
  @Assert('year >= 1990')
  @Assert('month >= 1 && month <= 12')
  const factory YearMonth({required int year, required int month}) = _YearMonth;
  const YearMonth._();

  /// DateTimeからYearMonthを生成
  factory YearMonth.fromDateTime(DateTime dt) =>
      YearMonth(year: dt.year, month: dt.month);

  /// DateTimeへ変換
  DateTime toDateTime() => DateTime(year, month);

  /// double型へ変換 (chart用)
  double toDouble() => (year * 100 + month).toDouble();

  /// 年月同士の比較
  int compareTo(YearMonth other) {
    final a = DateTime(year, month);
    final b = DateTime(other.year, other.month);

    return a.compareTo(b);
  }
}
