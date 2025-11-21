// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'monthly_totals_purchases_chart_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 分析で利用する月別の購入金額のグラフデータを管理

@ProviderFor(monthlyTotalsPurchasesChartData)
const monthlyTotalsPurchasesChartDataProvider =
    MonthlyTotalsPurchasesChartDataProvider._();

/// 分析で利用する月別の購入金額のグラフデータを管理

final class MonthlyTotalsPurchasesChartDataProvider
    extends
        $FunctionalProvider<
          AsyncValue<MonthlyTotalsPurchasesChartData>,
          MonthlyTotalsPurchasesChartData,
          FutureOr<MonthlyTotalsPurchasesChartData>
        >
    with
        $FutureModifier<MonthlyTotalsPurchasesChartData>,
        $FutureProvider<MonthlyTotalsPurchasesChartData> {
  /// 分析で利用する月別の購入金額のグラフデータを管理
  const MonthlyTotalsPurchasesChartDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'monthlyTotalsPurchasesChartDataProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$monthlyTotalsPurchasesChartDataHash();

  @$internal
  @override
  $FutureProviderElement<MonthlyTotalsPurchasesChartData> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<MonthlyTotalsPurchasesChartData> create(Ref ref) {
    return monthlyTotalsPurchasesChartData(ref);
  }
}

String _$monthlyTotalsPurchasesChartDataHash() =>
    r'8557602062e9c4394098c136813f26c3e0a31ded';
