// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$itemsHash() => r'c9e4aa30b7c077bba5283a35a7089958f1ced7e4';

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

/// ほしい物の一覧
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [items].
@ProviderFor(items)
const itemsProvider = ItemsFamily();

/// ほしい物の一覧
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [items].
class ItemsFamily extends Family<AsyncValue<List<Item>>> {
  /// ほしい物の一覧
  /// データの参照頻度を減らすため、`keepAlive`を指定
  ///
  /// Copied from [items].
  const ItemsFamily();

  /// ほしい物の一覧
  /// データの参照頻度を減らすため、`keepAlive`を指定
  ///
  /// Copied from [items].
  ItemsProvider call({required String groupId}) {
    return ItemsProvider(groupId: groupId);
  }

  @override
  ItemsProvider getProviderOverride(covariant ItemsProvider provider) {
    return call(groupId: provider.groupId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'itemsProvider';
}

/// ほしい物の一覧
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [items].
class ItemsProvider extends StreamProvider<List<Item>> {
  /// ほしい物の一覧
  /// データの参照頻度を減らすため、`keepAlive`を指定
  ///
  /// Copied from [items].
  ItemsProvider({required String groupId})
    : this._internal(
        (ref) => items(ref as ItemsRef, groupId: groupId),
        from: itemsProvider,
        name: r'itemsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$itemsHash,
        dependencies: ItemsFamily._dependencies,
        allTransitiveDependencies: ItemsFamily._allTransitiveDependencies,
        groupId: groupId,
      );

  ItemsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
  }) : super.internal();

  final String groupId;

  @override
  Override overrideWith(Stream<List<Item>> Function(ItemsRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: ItemsProvider._internal(
        (ref) => create(ref as ItemsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        groupId: groupId,
      ),
    );
  }

  @override
  StreamProviderElement<List<Item>> createElement() {
    return _ItemsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ItemsProvider && other.groupId == groupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ItemsRef on StreamProviderRef<List<Item>> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _ItemsProviderElement extends StreamProviderElement<List<Item>>
    with ItemsRef {
  _ItemsProviderElement(super.provider);

  @override
  String get groupId => (origin as ItemsProvider).groupId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
