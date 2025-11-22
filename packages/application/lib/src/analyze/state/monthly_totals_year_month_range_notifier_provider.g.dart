// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'monthly_totals_year_month_range_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 月間合計金額グラフの範囲

@ProviderFor(MonthlyTotalsYearMonthRangeNotifier)
const monthlyTotalsYearMonthRangeProvider =
    MonthlyTotalsYearMonthRangeNotifierProvider._();

/// 月間合計金額グラフの範囲
final class MonthlyTotalsYearMonthRangeNotifierProvider
    extends
        $NotifierProvider<MonthlyTotalsYearMonthRangeNotifier, YearMonthRange> {
  /// 月間合計金額グラフの範囲
  const MonthlyTotalsYearMonthRangeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'monthlyTotalsYearMonthRangeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$monthlyTotalsYearMonthRangeNotifierHash();

  @$internal
  @override
  MonthlyTotalsYearMonthRangeNotifier create() =>
      MonthlyTotalsYearMonthRangeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(YearMonthRange value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<YearMonthRange>(value),
    );
  }
}

String _$monthlyTotalsYearMonthRangeNotifierHash() =>
    r'09fd7826a57e3eeb19bb1ed317d20cd667a29234';

/// 月間合計金額グラフの範囲

abstract class _$MonthlyTotalsYearMonthRangeNotifier
    extends $Notifier<YearMonthRange> {
  YearMonthRange build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<YearMonthRange, YearMonthRange>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<YearMonthRange, YearMonthRange>,
              YearMonthRange,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
