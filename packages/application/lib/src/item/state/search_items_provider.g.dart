// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'search_items_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchItemsHash() => r'87df603865cf21c2d1a2618a581eff0ad6450ba7';

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
///
/// Copied from [searchItems].
@ProviderFor(searchItems)
const searchItemsProvider = SearchItemsFamily();

/// ほしい物の一覧
///
/// Copied from [searchItems].
class SearchItemsFamily extends Family<AsyncValue<PageInfo<Item>>> {
  /// ほしい物の一覧
  ///
  /// Copied from [searchItems].
  const SearchItemsFamily();

  /// ほしい物の一覧
  ///
  /// Copied from [searchItems].
  SearchItemsProvider call({required int page}) {
    return SearchItemsProvider(page: page);
  }

  @override
  SearchItemsProvider getProviderOverride(
    covariant SearchItemsProvider provider,
  ) {
    return call(page: provider.page);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchItemsProvider';
}

/// ほしい物の一覧
///
/// Copied from [searchItems].
class SearchItemsProvider extends AutoDisposeFutureProvider<PageInfo<Item>> {
  /// ほしい物の一覧
  ///
  /// Copied from [searchItems].
  SearchItemsProvider({required int page})
    : this._internal(
        (ref) => searchItems(ref as SearchItemsRef, page: page),
        from: searchItemsProvider,
        name: r'searchItemsProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$searchItemsHash,
        dependencies: SearchItemsFamily._dependencies,
        allTransitiveDependencies: SearchItemsFamily._allTransitiveDependencies,
        page: page,
      );

  SearchItemsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<PageInfo<Item>> Function(SearchItemsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchItemsProvider._internal(
        (ref) => create(ref as SearchItemsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PageInfo<Item>> createElement() {
    return _SearchItemsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchItemsProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SearchItemsRef on AutoDisposeFutureProviderRef<PageInfo<Item>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _SearchItemsProviderElement
    extends AutoDisposeFutureProviderElement<PageInfo<Item>>
    with SearchItemsRef {
  _SearchItemsProviderElement(super.provider);

  @override
  int get page => (origin as SearchItemsProvider).page;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
