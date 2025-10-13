// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_item_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$itemCollectionRefHash() => r'878270116cb5ccfc5407466c6f69b15abb8312dc';

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

/// 欲しい物コレクションの参照
///
/// Copied from [itemCollectionRef].
@ProviderFor(itemCollectionRef)
const itemCollectionRefProvider = ItemCollectionRefFamily();

/// 欲しい物コレクションの参照
///
/// Copied from [itemCollectionRef].
class ItemCollectionRefFamily
    extends Family<CollectionReference<FirestoreItemModel>> {
  /// 欲しい物コレクションの参照
  ///
  /// Copied from [itemCollectionRef].
  const ItemCollectionRefFamily();

  /// 欲しい物コレクションの参照
  ///
  /// Copied from [itemCollectionRef].
  ItemCollectionRefProvider call({required String groupId}) {
    return ItemCollectionRefProvider(groupId: groupId);
  }

  @override
  ItemCollectionRefProvider getProviderOverride(
    covariant ItemCollectionRefProvider provider,
  ) {
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
  String? get name => r'itemCollectionRefProvider';
}

/// 欲しい物コレクションの参照
///
/// Copied from [itemCollectionRef].
class ItemCollectionRefProvider
    extends AutoDisposeProvider<CollectionReference<FirestoreItemModel>> {
  /// 欲しい物コレクションの参照
  ///
  /// Copied from [itemCollectionRef].
  ItemCollectionRefProvider({required String groupId})
    : this._internal(
        (ref) =>
            itemCollectionRef(ref as ItemCollectionRefRef, groupId: groupId),
        from: itemCollectionRefProvider,
        name: r'itemCollectionRefProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$itemCollectionRefHash,
        dependencies: ItemCollectionRefFamily._dependencies,
        allTransitiveDependencies:
            ItemCollectionRefFamily._allTransitiveDependencies,
        groupId: groupId,
      );

  ItemCollectionRefProvider._internal(
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
  Override overrideWith(
    CollectionReference<FirestoreItemModel> Function(
      ItemCollectionRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ItemCollectionRefProvider._internal(
        (ref) => create(ref as ItemCollectionRefRef),
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
  AutoDisposeProviderElement<CollectionReference<FirestoreItemModel>>
  createElement() {
    return _ItemCollectionRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ItemCollectionRefProvider && other.groupId == groupId;
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
mixin ItemCollectionRefRef
    on AutoDisposeProviderRef<CollectionReference<FirestoreItemModel>> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _ItemCollectionRefProviderElement
    extends AutoDisposeProviderElement<CollectionReference<FirestoreItemModel>>
    with ItemCollectionRefRef {
  _ItemCollectionRefProviderElement(super.provider);

  @override
  String get groupId => (origin as ItemCollectionRefProvider).groupId;
}

String _$itemDocumentRefHash() => r'1c580cff3356afb7bd69d7917314fe9a8aa3f3de';

/// 欲しい物ドキュメントの参照
///
/// Copied from [itemDocumentRef].
@ProviderFor(itemDocumentRef)
const itemDocumentRefProvider = ItemDocumentRefFamily();

/// 欲しい物ドキュメントの参照
///
/// Copied from [itemDocumentRef].
class ItemDocumentRefFamily
    extends Family<DocumentReference<FirestoreItemModel>> {
  /// 欲しい物ドキュメントの参照
  ///
  /// Copied from [itemDocumentRef].
  const ItemDocumentRefFamily();

  /// 欲しい物ドキュメントの参照
  ///
  /// Copied from [itemDocumentRef].
  ItemDocumentRefProvider call({required String groupId, String? itemId}) {
    return ItemDocumentRefProvider(groupId: groupId, itemId: itemId);
  }

  @override
  ItemDocumentRefProvider getProviderOverride(
    covariant ItemDocumentRefProvider provider,
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
  String? get name => r'itemDocumentRefProvider';
}

/// 欲しい物ドキュメントの参照
///
/// Copied from [itemDocumentRef].
class ItemDocumentRefProvider
    extends AutoDisposeProvider<DocumentReference<FirestoreItemModel>> {
  /// 欲しい物ドキュメントの参照
  ///
  /// Copied from [itemDocumentRef].
  ItemDocumentRefProvider({required String groupId, String? itemId})
    : this._internal(
        (ref) => itemDocumentRef(
          ref as ItemDocumentRefRef,
          groupId: groupId,
          itemId: itemId,
        ),
        from: itemDocumentRefProvider,
        name: r'itemDocumentRefProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$itemDocumentRefHash,
        dependencies: ItemDocumentRefFamily._dependencies,
        allTransitiveDependencies:
            ItemDocumentRefFamily._allTransitiveDependencies,
        groupId: groupId,
        itemId: itemId,
      );

  ItemDocumentRefProvider._internal(
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
  final String? itemId;

  @override
  Override overrideWith(
    DocumentReference<FirestoreItemModel> Function(ItemDocumentRefRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ItemDocumentRefProvider._internal(
        (ref) => create(ref as ItemDocumentRefRef),
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
  AutoDisposeProviderElement<DocumentReference<FirestoreItemModel>>
  createElement() {
    return _ItemDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ItemDocumentRefProvider &&
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
mixin ItemDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestoreItemModel>> {
  /// The parameter `groupId` of this provider.
  String get groupId;

  /// The parameter `itemId` of this provider.
  String? get itemId;
}

class _ItemDocumentRefProviderElement
    extends AutoDisposeProviderElement<DocumentReference<FirestoreItemModel>>
    with ItemDocumentRefRef {
  _ItemDocumentRefProviderElement(super.provider);

  @override
  String get groupId => (origin as ItemDocumentRefProvider).groupId;
  @override
  String? get itemId => (origin as ItemDocumentRefProvider).itemId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
