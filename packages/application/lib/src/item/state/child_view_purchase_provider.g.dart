// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'child_view_purchase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$childViewPurchaseHash() => r'29ce6a92a2e613c992d65f72961f75fdeb8127b7';

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

/// (子供参照用)購入情報
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [childViewPurchase].
@ProviderFor(childViewPurchase)
const childViewPurchaseProvider = ChildViewPurchaseFamily();

/// (子供参照用)購入情報
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [childViewPurchase].
class ChildViewPurchaseFamily extends Family<AsyncValue<Purchase?>> {
  /// (子供参照用)購入情報
  /// データの参照頻度を減らすため、`keepAlive`を指定
  ///
  /// Copied from [childViewPurchase].
  const ChildViewPurchaseFamily();

  /// (子供参照用)購入情報
  /// データの参照頻度を減らすため、`keepAlive`を指定
  ///
  /// Copied from [childViewPurchase].
  ChildViewPurchaseProvider call({
    required String groupId,
    required String itemId,
  }) {
    return ChildViewPurchaseProvider(groupId: groupId, itemId: itemId);
  }

  @override
  ChildViewPurchaseProvider getProviderOverride(
    covariant ChildViewPurchaseProvider provider,
  ) {
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
  String? get name => r'childViewPurchaseProvider';
}

/// (子供参照用)購入情報
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [childViewPurchase].
class ChildViewPurchaseProvider extends StreamProvider<Purchase?> {
  /// (子供参照用)購入情報
  /// データの参照頻度を減らすため、`keepAlive`を指定
  ///
  /// Copied from [childViewPurchase].
  ChildViewPurchaseProvider({required String groupId, required String itemId})
    : this._internal(
        (ref) => childViewPurchase(
          ref as ChildViewPurchaseRef,
          groupId: groupId,
          itemId: itemId,
        ),
        from: childViewPurchaseProvider,
        name: r'childViewPurchaseProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$childViewPurchaseHash,
        dependencies: ChildViewPurchaseFamily._dependencies,
        allTransitiveDependencies:
            ChildViewPurchaseFamily._allTransitiveDependencies,
        groupId: groupId,
        itemId: itemId,
      );

  ChildViewPurchaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
    required this.itemId,
  }) : super.internal();

  final String groupId;
  final String itemId;

  @override
  Override overrideWith(
    Stream<Purchase?> Function(ChildViewPurchaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChildViewPurchaseProvider._internal(
        (ref) => create(ref as ChildViewPurchaseRef),
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
  StreamProviderElement<Purchase?> createElement() {
    return _ChildViewPurchaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChildViewPurchaseProvider &&
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
mixin ChildViewPurchaseRef on StreamProviderRef<Purchase?> {
  /// The parameter `groupId` of this provider.
  String get groupId;

  /// The parameter `itemId` of this provider.
  String get itemId;
}

class _ChildViewPurchaseProviderElement extends StreamProviderElement<Purchase?>
    with ChildViewPurchaseRef {
  _ChildViewPurchaseProviderElement(super.provider);

  @override
  String get groupId => (origin as ChildViewPurchaseProvider).groupId;
  @override
  String get itemId => (origin as ChildViewPurchaseProvider).itemId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
