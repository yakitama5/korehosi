// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_detail_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$itemIdHash() => r'a3ee906db5df5a1aac622eba5ecbfb6c33a332b2';

/// 明細表示対象となる欲しい物のIDを管理するProvider
/// `override`前提の利用を強制する
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef _ItemIdRef = AutoDisposeProviderRef<String?>;
String _$itemHash() => r'eeb8aba393b91ebd02124be9914a963969cf61af';

/// 明細表示対象となる欲しい物のEntityを管理するProvider
/// `_itemIdProvider`に依存する
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef _ItemRef = AutoDisposeFutureProviderRef<Item?>;
String _$purchaseHash() => r'448fb7ae5ce01766c90e3ebaffc2c1bfe855bebb';

/// 明細表示対象となる欲しい物に属する購入情報のEntityを管理するProvider
/// `_itemIdProvider`に依存する
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef _PurchaseRef = AutoDisposeFutureProviderRef<Purchase?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
