// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'item_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$itemHash() => r'fef459a68ca545b6011aeceb28a87dda2ae21ff9';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// 現在のグループ内の欲しい物
///
/// Copied from [item].
@ProviderFor(item)
const itemProvider = ItemFamily();

/// 現在のグループ内の欲しい物
///
/// Copied from [item].
class ItemFamily extends Family<AsyncValue<Item?>> {
  /// 現在のグループ内の欲しい物
  ///
  /// Copied from [item].
  const ItemFamily();

  /// 現在のグループ内の欲しい物
  ///
  /// Copied from [item].
  ItemProvider call({required ItemId itemId}) {
    return ItemProvider(itemId: itemId);
  }

  @override
  ItemProvider getProviderOverride(covariant ItemProvider provider) {
    return call(itemId: provider.itemId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'itemProvider';
}

/// 現在のグループ内の欲しい物
///
/// Copied from [item].
class ItemProvider extends AutoDisposeFutureProvider<Item?> {
  /// 現在のグループ内の欲しい物
  ///
  /// Copied from [item].
  ItemProvider({required ItemId itemId})
    : this._internal(
        (ref) => item(ref as ItemRef, itemId: itemId),
        from: itemProvider,
        name: r'itemProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$itemHash,
        dependencies: ItemFamily._dependencies,
        allTransitiveDependencies: ItemFamily._allTransitiveDependencies,
        itemId: itemId,
      );

  ItemProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.itemId,
  }) : super.internal();

  final ItemId itemId;

  @override
  Override overrideWith(FutureOr<Item?> Function(ItemRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: ItemProvider._internal(
        (ref) => create(ref as ItemRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        itemId: itemId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Item?> createElement() {
    return _ItemProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ItemProvider && other.itemId == itemId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, itemId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ItemRef on AutoDisposeFutureProviderRef<Item?> {
  /// The parameter `itemId` of this provider.
  ItemId get itemId;
}

class _ItemProviderElement extends AutoDisposeFutureProviderElement<Item?>
    with ItemRef {
  _ItemProviderElement(super.provider);

  @override
  ItemId get itemId => (origin as ItemProvider).itemId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
