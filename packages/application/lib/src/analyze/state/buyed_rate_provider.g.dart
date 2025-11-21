// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'buyed_rate_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 購入率を管理するProvider

@ProviderFor(buyedRate)
const buyedRateProvider = BuyedRateProvider._();

/// 購入率を管理するProvider

final class BuyedRateProvider
    extends
        $FunctionalProvider<
          AsyncValue<ItemBuyedRate>,
          ItemBuyedRate,
          FutureOr<ItemBuyedRate>
        >
    with $FutureModifier<ItemBuyedRate>, $FutureProvider<ItemBuyedRate> {
  /// 購入率を管理するProvider
  const BuyedRateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'buyedRateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$buyedRateHash();

  @$internal
  @override
  $FutureProviderElement<ItemBuyedRate> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ItemBuyedRate> create(Ref ref) {
    return buyedRate(ref);
  }
}

String _$buyedRateHash() => r'9887ffbdf6f42a083f82049d111a53bc7d7b9847';
