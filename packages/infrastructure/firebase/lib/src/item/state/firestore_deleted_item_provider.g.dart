// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_deleted_item_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$ditemCollectionRefHash() =>
    r'12c9a53535af95e88d5e4362e296e5ce09e8422e';

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

/// 削除済欲しい物コレクションの参照
///
/// Copied from [ditemCollectionRef].
@ProviderFor(ditemCollectionRef)
const ditemCollectionRefProvider = DitemCollectionRefFamily();

/// 削除済欲しい物コレクションの参照
///
/// Copied from [ditemCollectionRef].
class DitemCollectionRefFamily
    extends Family<CollectionReference<FirestoreItemModel>> {
  /// 削除済欲しい物コレクションの参照
  ///
  /// Copied from [ditemCollectionRef].
  const DitemCollectionRefFamily();

  /// 削除済欲しい物コレクションの参照
  ///
  /// Copied from [ditemCollectionRef].
  DitemCollectionRefProvider call({required GroupId groupId}) {
    return DitemCollectionRefProvider(groupId: groupId);
  }

  @override
  DitemCollectionRefProvider getProviderOverride(
    covariant DitemCollectionRefProvider provider,
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
  String? get name => r'ditemCollectionRefProvider';
}

/// 削除済欲しい物コレクションの参照
///
/// Copied from [ditemCollectionRef].
class DitemCollectionRefProvider
    extends AutoDisposeProvider<CollectionReference<FirestoreItemModel>> {
  /// 削除済欲しい物コレクションの参照
  ///
  /// Copied from [ditemCollectionRef].
  DitemCollectionRefProvider({required GroupId groupId})
    : this._internal(
        (ref) =>
            ditemCollectionRef(ref as DitemCollectionRefRef, groupId: groupId),
        from: ditemCollectionRefProvider,
        name: r'ditemCollectionRefProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$ditemCollectionRefHash,
        dependencies: DitemCollectionRefFamily._dependencies,
        allTransitiveDependencies:
            DitemCollectionRefFamily._allTransitiveDependencies,
        groupId: groupId,
      );

  DitemCollectionRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
  }) : super.internal();

  final GroupId groupId;

  @override
  Override overrideWith(
    CollectionReference<FirestoreItemModel> Function(
      DitemCollectionRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DitemCollectionRefProvider._internal(
        (ref) => create(ref as DitemCollectionRefRef),
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
    return _DitemCollectionRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DitemCollectionRefProvider && other.groupId == groupId;
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
mixin DitemCollectionRefRef
    on AutoDisposeProviderRef<CollectionReference<FirestoreItemModel>> {
  /// The parameter `groupId` of this provider.
  GroupId get groupId;
}

class _DitemCollectionRefProviderElement
    extends AutoDisposeProviderElement<CollectionReference<FirestoreItemModel>>
    with DitemCollectionRefRef {
  _DitemCollectionRefProviderElement(super.provider);

  @override
  GroupId get groupId => (origin as DitemCollectionRefProvider).groupId;
}

String _$ditemDocumentRefHash() => r'b36077509e3218e1515a1b2be267beede3760f99';

/// 欲しい物ドキュメントの参照
///
/// Copied from [ditemDocumentRef].
@ProviderFor(ditemDocumentRef)
const ditemDocumentRefProvider = DitemDocumentRefFamily();

/// 欲しい物ドキュメントの参照
///
/// Copied from [ditemDocumentRef].
class DitemDocumentRefFamily
    extends Family<DocumentReference<FirestoreItemModel>> {
  /// 欲しい物ドキュメントの参照
  ///
  /// Copied from [ditemDocumentRef].
  const DitemDocumentRefFamily();

  /// 欲しい物ドキュメントの参照
  ///
  /// Copied from [ditemDocumentRef].
  DitemDocumentRefProvider call({required GroupId groupId, ItemId? itemId}) {
    return DitemDocumentRefProvider(groupId: groupId, itemId: itemId);
  }

  @override
  DitemDocumentRefProvider getProviderOverride(
    covariant DitemDocumentRefProvider provider,
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
  String? get name => r'ditemDocumentRefProvider';
}

/// 欲しい物ドキュメントの参照
///
/// Copied from [ditemDocumentRef].
class DitemDocumentRefProvider
    extends AutoDisposeProvider<DocumentReference<FirestoreItemModel>> {
  /// 欲しい物ドキュメントの参照
  ///
  /// Copied from [ditemDocumentRef].
  DitemDocumentRefProvider({required GroupId groupId, ItemId? itemId})
    : this._internal(
        (ref) => ditemDocumentRef(
          ref as DitemDocumentRefRef,
          groupId: groupId,
          itemId: itemId,
        ),
        from: ditemDocumentRefProvider,
        name: r'ditemDocumentRefProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$ditemDocumentRefHash,
        dependencies: DitemDocumentRefFamily._dependencies,
        allTransitiveDependencies:
            DitemDocumentRefFamily._allTransitiveDependencies,
        groupId: groupId,
        itemId: itemId,
      );

  DitemDocumentRefProvider._internal(
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
  final ItemId? itemId;

  @override
  Override overrideWith(
    DocumentReference<FirestoreItemModel> Function(DitemDocumentRefRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DitemDocumentRefProvider._internal(
        (ref) => create(ref as DitemDocumentRefRef),
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
    return _DitemDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DitemDocumentRefProvider &&
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
mixin DitemDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestoreItemModel>> {
  /// The parameter `groupId` of this provider.
  GroupId get groupId;

  /// The parameter `itemId` of this provider.
  ItemId? get itemId;
}

class _DitemDocumentRefProviderElement
    extends AutoDisposeProviderElement<DocumentReference<FirestoreItemModel>>
    with DitemDocumentRefRef {
  _DitemDocumentRefProviderElement(super.provider);

  @override
  GroupId get groupId => (origin as DitemDocumentRefProvider).groupId;
  @override
  ItemId? get itemId => (origin as DitemDocumentRefProvider).itemId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
