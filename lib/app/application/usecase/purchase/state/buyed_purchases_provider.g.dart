// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buyed_purchases_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$buyedPurchasesHash() => r'fef768ecf9caccc21c90af11af646d462d395d51';

/// 購入済の購入情報
///
/// Copied from [buyedPurchases].
@ProviderFor(buyedPurchases)
final buyedPurchasesProvider =
    AutoDisposeFutureProvider<List<Purchase>>.internal(
  buyedPurchases,
  name: r'buyedPurchasesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$buyedPurchasesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef BuyedPurchasesRef = AutoDisposeFutureProviderRef<List<Purchase>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
