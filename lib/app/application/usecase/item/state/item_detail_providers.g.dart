// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_detail_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$itemIdHash() => r'42a86b52949c2f92e6439e0241e4e7fee52d4438';

/// 明細画面の欲しい物ID
/// 新規 or 更新の判定に利用するため、IDだけを切り出し
///
/// Copied from [_itemId].
@ProviderFor(_itemId)
final _itemIdProvider = AutoDisposeProvider<String?>.internal(
  _itemId,
  name: r'_itemIdProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$itemIdHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _ItemIdRef = AutoDisposeProviderRef<String?>;
String _$itemHash() => r'08b429d55ec789eada55275734667e0124bcec1c';

/// 明細画面の欲しい物
///
/// Copied from [_item].
@ProviderFor(_item)
final _itemProvider = AutoDisposeFutureProvider<Item?>.internal(
  _item,
  name: r'_itemProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$itemHash,
  dependencies: <ProviderOrFamily>[_itemIdProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    _itemIdProvider,
    ...?_itemIdProvider.allTransitiveDependencies
  },
);

typedef _ItemRef = AutoDisposeFutureProviderRef<Item?>;
String _$purchaseHash() => r'9c281248b302951779d25a55255ff4b983b6e03c';

/// 明細画面の購入情報
///
/// Copied from [_purchase].
@ProviderFor(_purchase)
final _purchaseProvider = AutoDisposeFutureProvider<Purchase?>.internal(
  _purchase,
  name: r'_purchaseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$purchaseHash,
  dependencies: <ProviderOrFamily>[_itemIdProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    _itemIdProvider,
    ...?_itemIdProvider.allTransitiveDependencies
  },
);

typedef _PurchaseRef = AutoDisposeFutureProviderRef<Purchase?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
