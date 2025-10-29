// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'purchase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$purchaseHash() => r'bd9dac1aa114aee244986c4fe6762f9e19bfa0e2';

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

/// 購入情報
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [purchase].
@ProviderFor(purchase)
const purchaseProvider = PurchaseFamily();

/// 購入情報
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [purchase].
class PurchaseFamily extends Family<AsyncValue<Purchase?>> {
  /// 購入情報
  /// データの参照頻度を減らすため、`keepAlive`を指定
  ///
  /// Copied from [purchase].
  const PurchaseFamily();

  /// 購入情報
  /// データの参照頻度を減らすため、`keepAlive`を指定
  ///
  /// Copied from [purchase].
  PurchaseProvider call({required GroupId groupId, required ItemId itemId}) {
    return PurchaseProvider(groupId: groupId, itemId: itemId);
  }

  @override
  PurchaseProvider getProviderOverride(covariant PurchaseProvider provider) {
    return call(groupId: provider.groupId, itemId: provider.itemId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'purchaseProvider';
}

/// 購入情報
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [purchase].
class PurchaseProvider extends FutureProvider<Purchase?> {
  /// 購入情報
  /// データの参照頻度を減らすため、`keepAlive`を指定
  ///
  /// Copied from [purchase].
  PurchaseProvider({required GroupId groupId, required ItemId itemId})
    : this._internal(
        (ref) => purchase(ref as PurchaseRef, groupId: groupId, itemId: itemId),
        from: purchaseProvider,
        name: r'purchaseProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$purchaseHash,
        dependencies: PurchaseFamily._dependencies,
        allTransitiveDependencies: PurchaseFamily._allTransitiveDependencies,
        groupId: groupId,
        itemId: itemId,
      );

  PurchaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
    required this.itemId,
  }) : super.internal();

  final GroupId groupId;
  final ItemId itemId;

  @override
  Override overrideWith(
    FutureOr<Purchase?> Function(PurchaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PurchaseProvider._internal(
        (ref) => create(ref as PurchaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        groupId: groupId,
        itemId: itemId,
      ),
    );
  }

  @override
  FutureProviderElement<Purchase?> createElement() {
    return _PurchaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PurchaseProvider &&
        other.groupId == groupId &&
        other.itemId == itemId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);
    hash = _SystemHash.combine(hash, itemId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PurchaseRef on FutureProviderRef<Purchase?> {
  /// The parameter `groupId` of this provider.
  GroupId get groupId;

  /// The parameter `itemId` of this provider.
  ItemId get itemId;
}

class _PurchaseProviderElement extends FutureProviderElement<Purchase?>
    with PurchaseRef {
  _PurchaseProviderElement(super.provider);

  @override
  GroupId get groupId => (origin as PurchaseProvider).groupId;
  @override
  ItemId get itemId => (origin as PurchaseProvider).itemId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
