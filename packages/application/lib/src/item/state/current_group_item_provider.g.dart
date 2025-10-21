// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_group_item_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentGroupItemHash() => r'65307d81fe65498afd0a68a7c96d7ee862d6c0d4';

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
/// Copied from [currentGroupItem].
@ProviderFor(currentGroupItem)
const currentGroupItemProvider = CurrentGroupItemFamily();

/// 現在のグループ内の欲しい物
///
/// Copied from [currentGroupItem].
class CurrentGroupItemFamily extends Family<AsyncValue<Item?>> {
  /// 現在のグループ内の欲しい物
  ///
  /// Copied from [currentGroupItem].
  const CurrentGroupItemFamily();

  /// 現在のグループ内の欲しい物
  ///
  /// Copied from [currentGroupItem].
  CurrentGroupItemProvider call({required String itemId}) {
    return CurrentGroupItemProvider(itemId: itemId);
  }

  @override
  CurrentGroupItemProvider getProviderOverride(
    covariant CurrentGroupItemProvider provider,
  ) {
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
  String? get name => r'currentGroupItemProvider';
}

/// 現在のグループ内の欲しい物
///
/// Copied from [currentGroupItem].
class CurrentGroupItemProvider extends AutoDisposeFutureProvider<Item?> {
  /// 現在のグループ内の欲しい物
  ///
  /// Copied from [currentGroupItem].
  CurrentGroupItemProvider({required String itemId})
    : this._internal(
        (ref) => currentGroupItem(ref as CurrentGroupItemRef, itemId: itemId),
        from: currentGroupItemProvider,
        name: r'currentGroupItemProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$currentGroupItemHash,
        dependencies: CurrentGroupItemFamily._dependencies,
        allTransitiveDependencies:
            CurrentGroupItemFamily._allTransitiveDependencies,
        itemId: itemId,
      );

  CurrentGroupItemProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.itemId,
  }) : super.internal();

  final String itemId;

  @override
  Override overrideWith(
    FutureOr<Item?> Function(CurrentGroupItemRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CurrentGroupItemProvider._internal(
        (ref) => create(ref as CurrentGroupItemRef),
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
    return _CurrentGroupItemProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CurrentGroupItemProvider && other.itemId == itemId;
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
mixin CurrentGroupItemRef on AutoDisposeFutureProviderRef<Item?> {
  /// The parameter `itemId` of this provider.
  String get itemId;
}

class _CurrentGroupItemProviderElement
    extends AutoDisposeFutureProviderElement<Item?>
    with CurrentGroupItemRef {
  _CurrentGroupItemProviderElement(super.provider);

  @override
  String get itemId => (origin as CurrentGroupItemProvider).itemId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
