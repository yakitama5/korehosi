import 'package:packages_domain/common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'monthly_totals_year_month_range_notifier_provider.g.dart';

/// 月間合計金額グラフの範囲
@riverpod
class MonthlyTotalsYearMonthRangeNotifier
    extends _$MonthlyTotalsYearMonthRangeNotifier {
  /// 初期状態は現在日時から過去6ヶ月
  @override
  YearMonthRange build() {
    final now = DateTime.now();

    final from = YearMonth.fromDateTime(DateTime(now.year, now.month - 5));
    final to = YearMonth.fromDateTime(now);

    return YearMonthRange(from: from, to: to);
  }

  /// 期間を前へ
  YearMonthRange prev() {
    final dt = state.from.toDateTime();

    final from = YearMonth.fromDateTime(DateTime(dt.year, dt.month - 6));
    final to = YearMonth.fromDateTime(DateTime(dt.year, dt.month - 1));

    return YearMonthRange(from: from, to: to);
  }

  /// 期間を前へ
  YearMonthRange next() {
    final dt = state.to.toDateTime();

    final from = YearMonth.fromDateTime(DateTime(dt.year, dt.month + 1));
    final to = YearMonth.fromDateTime(DateTime(dt.year, dt.month + 6));

    return YearMonthRange(from: from, to: to);
  }
}
