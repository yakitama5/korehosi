// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'monthly_sum_price_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$monthlySumPriceHash() => r'fac87f502d0df66a839ce42306f70b53c38e7030';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef MonthlySumPriceRef =
    AutoDisposeFutureProviderRef<Map<DateTime, MonthlySumPrice>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
