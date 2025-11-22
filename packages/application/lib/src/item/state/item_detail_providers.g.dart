// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'item_detail_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 明細表示対象となる欲しい物のIDを管理するProvider
/// `override`前提の利用を強制する

@ProviderFor(detailPageItemId)
const _itemIdProvider = DetailPageItemIdProvider._();

/// 明細表示対象となる欲しい物のIDを管理するProvider
/// `override`前提の利用を強制する

final class DetailPageItemIdProvider
    extends $FunctionalProvider<ItemId?, ItemId?, ItemId?>
    with $Provider<ItemId?> {
  /// 明細表示対象となる欲しい物のIDを管理するProvider
  /// `override`前提の利用を強制する
  const DetailPageItemIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'_itemIdProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$detailPageItemIdHash();

  @$internal
  @override
  $ProviderElement<ItemId?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ItemId? create(Ref ref) {
    return detailPageItemId(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ItemId? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ItemId?>(value),
    );
  }
}

String _$detailPageItemIdHash() => r'f3babfb340dac0b943dacff94238f08811617c01';

/// 明細表示対象となる欲しい物のEntityを管理するProvider
/// `_itemIdProvider`に依存する

@ProviderFor(detailPageItem)
const _itemProvider = DetailPageItemProvider._();

/// 明細表示対象となる欲しい物のEntityを管理するProvider
/// `_itemIdProvider`に依存する

final class DetailPageItemProvider
    extends $FunctionalProvider<AsyncValue<Item?>, Item?, FutureOr<Item?>>
    with $FutureModifier<Item?>, $FutureProvider<Item?> {
  /// 明細表示対象となる欲しい物のEntityを管理するProvider
  /// `_itemIdProvider`に依存する
  const DetailPageItemProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'_itemProvider',
        isAutoDispose: true,
        dependencies: const <ProviderOrFamily>[_itemIdProvider],
        $allTransitiveDependencies: const <ProviderOrFamily>[
          DetailPageItemProvider.$allTransitiveDependencies0,
        ],
      );

  static const $allTransitiveDependencies0 = _itemIdProvider;

  @override
  String debugGetCreateSourceHash() => _$detailPageItemHash();

  @$internal
  @override
  $FutureProviderElement<Item?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Item?> create(Ref ref) {
    return detailPageItem(ref);
  }
}

String _$detailPageItemHash() => r'53ecc4282fea20a4691805b4afce717fd031d100';
