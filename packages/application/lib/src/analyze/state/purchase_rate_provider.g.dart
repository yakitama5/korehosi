// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'purchase_rate_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 購入率を管理するProvider

@ProviderFor(purchaseRate)
const purchaseRateProvider = PurchaseRateProvider._();

/// 購入率を管理するProvider

final class PurchaseRateProvider
    extends
        $FunctionalProvider<
          AsyncValue<ItemPurchaseRate>,
          ItemPurchaseRate,
          FutureOr<ItemPurchaseRate>
        >
    with $FutureModifier<ItemPurchaseRate>, $FutureProvider<ItemPurchaseRate> {
  /// 購入率を管理するProvider
  const PurchaseRateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'purchaseRateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$purchaseRateHash();

  @$internal
  @override
  $FutureProviderElement<ItemPurchaseRate> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ItemPurchaseRate> create(Ref ref) {
    return purchaseRate(ref);
  }
}

String _$purchaseRateHash() => r'457493fd133520466515115186e5faabc521e6fd';
