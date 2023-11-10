import 'package:intl/intl.dart';

/// 日時型の拡張
extension DateTimeForApplicationX on DateTime {
  /// 年月形式に整形する
  String get formatYm => DateFormat('yyyyMM').format(this);

  /// 月初日に変換する
  DateTime get firstDayOfTheMonth => DateTime(year, month);

  /// 月数を加算する
  DateTime addMonth(int month) => DateTime(year, this.month + month);

  /// 月数の差を求める
  int diffMonth(DateTime to) {
    var yearDiff = to.year - year;
    var monthDiff = to.month - month;

    if (monthDiff < 0) {
      yearDiff--;
      monthDiff += 12;
    }

    return yearDiff * 12 + monthDiff;
  }
}
