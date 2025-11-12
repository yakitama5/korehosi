import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/src/common/value_object/year_month.dart';

part 'year_month_range.freezed.dart';

typedef YearMonthRangeMapper<T> = T Function(YearMonth yearMonth, int index);

/// 年月の範囲指定
@freezed
abstract class YearMonthRange with _$YearMonthRange {
  // From/Toの逆転はNG
  @Assert('from.compareTo(to) <= 0')
  factory YearMonthRange({required YearMonth from, required YearMonth to}) =
      _YearMonthRange;
  YearMonthRange._();

  /// 月別に変換処理を行う
  List<T> mapByMonthly<T>(YearMonthRangeMapper<T> mapper) {
    final toDt = DateTime(to.year, to.month);

    var index = 0;
    var dt = DateTime(from.year, from.month);
    final list = <T>[];
    while (dt.compareTo(toDt) <= 0) {
      final currentYearMonth = YearMonth(year: dt.year, month: dt.month);
      list.add(mapper(currentYearMonth, index));

      dt = DateTime(dt.year, dt.month + 1);
      index++;
    }

    return list;
  }
}
