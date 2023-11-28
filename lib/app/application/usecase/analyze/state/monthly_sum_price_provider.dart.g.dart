// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monthly_sum_price_provider.dart.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$monthlySumPriceHash() => r'13a9c63b17b990ac77d5c25f9ec84b408b0d6cba';

/// 月間合計購入金額
///
/// Copied from [monthlySumPrice].
@ProviderFor(monthlySumPrice)
final monthlySumPriceProvider =
    AutoDisposeFutureProvider<Map<DateTime, MonthlySumPrice>>.internal(
  monthlySumPrice,
  name: r'monthlySumPriceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$monthlySumPriceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MonthlySumPriceRef
    = AutoDisposeFutureProviderRef<Map<DateTime, MonthlySumPrice>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
