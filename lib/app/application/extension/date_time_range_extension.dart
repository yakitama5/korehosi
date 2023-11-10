import 'package:flutter/material.dart';

import 'date_time_extension.dart';

typedef DateTimeRangeMapper<T> = T Function(
  DateTime dt,
  int index,
);

/// 日時範囲型の拡張
extension DateTimeRangeForApplicationX on DateTimeRange {
  /// 月別に変換処理を行う
  List<T> mapByMonthly<T>(
    DateTimeRangeMapper<T> mapper,
  ) {
    final from = start.firstDayOfTheMonth;
    final to = end.firstDayOfTheMonth;

    var dt = from;
    var index = 0;
    final list = <T>[];
    while (dt.compareTo(to) <= 0) {
      list.add(mapper(dt, index));
      dt = from.addMonth(++index);
    }

    return list;
  }
}
