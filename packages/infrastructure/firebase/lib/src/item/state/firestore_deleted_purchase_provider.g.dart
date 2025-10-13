// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_deleted_purchase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dpurchaseCollectionRefHash() =>
    r'ef182ab0367b64c25cb40275fbed1e2e88b8b34f';

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

/// 削除済購入情報コレクションの参照
///
/// Copied from [dpurchaseCollectionRef].
@ProviderFor(dpurchaseCollectionRef)
const dpurchaseCollectionRefProvider = DpurchaseCollectionRefFamily();

/// 削除済購入情報コレクションの参照
///
/// Copied from [dpurchaseCollectionRef].
class DpurchaseCollectionRefFamily
    extends Family<CollectionReference<FirestorePurchaseModel>> {
  /// 削除済購入情報コレクションの参照
  ///
  /// Copied from [dpurchaseCollectionRef].
  const DpurchaseCollectionRefFamily();

  /// 削除済購入情報コレクションの参照
  ///
  /// Copied from [dpurchaseCollectionRef].
  DpurchaseCollectionRefProvider call({required String groupId}) {
    return DpurchaseCollectionRefProvider(groupId: groupId);
  }

  @override
  DpurchaseCollectionRefProvider getProviderOverride(
    covariant DpurchaseCollectionRefProvider provider,
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
  String? get name => r'dpurchaseCollectionRefProvider';
}

/// 削除済購入情報コレクションの参照
///
/// Copied from [dpurchaseCollectionRef].
class DpurchaseCollectionRefProvider
    extends AutoDisposeProvider<CollectionReference<FirestorePurchaseModel>> {
  /// 削除済購入情報コレクションの参照
  ///
  /// Copied from [dpurchaseCollectionRef].
  DpurchaseCollectionRefProvider({required String groupId})
    : this._internal(
        (ref) => dpurchaseCollectionRef(
          ref as DpurchaseCollectionRefRef,
          groupId: groupId,
        ),
        from: dpurchaseCollectionRefProvider,
        name: r'dpurchaseCollectionRefProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$dpurchaseCollectionRefHash,
        dependencies: DpurchaseCollectionRefFamily._dependencies,
        allTransitiveDependencies:
            DpurchaseCollectionRefFamily._allTransitiveDependencies,
        groupId: groupId,
      );

  DpurchaseCollectionRefProvider._internal(
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
    CollectionReference<FirestorePurchaseModel> Function(
      DpurchaseCollectionRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DpurchaseCollectionRefProvider._internal(
        (ref) => create(ref as DpurchaseCollectionRefRef),
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
  AutoDisposeProviderElement<CollectionReference<FirestorePurchaseModel>>
  createElement() {
    return _DpurchaseCollectionRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DpurchaseCollectionRefProvider && other.groupId == groupId;
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
mixin DpurchaseCollectionRefRef
    on AutoDisposeProviderRef<CollectionReference<FirestorePurchaseModel>> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _DpurchaseCollectionRefProviderElement
    extends
        AutoDisposeProviderElement<CollectionReference<FirestorePurchaseModel>>
    with DpurchaseCollectionRefRef {
  _DpurchaseCollectionRefProviderElement(super.provider);

  @override
  String get groupId => (origin as DpurchaseCollectionRefProvider).groupId;
}

String _$dpurchaseDocumentRefHash() =>
    r'0d5503566956d921a7382f79ed1534fc352a7ea8';

/// 購入情報ドキュメントの参照
///
/// Copied from [dpurchaseDocumentRef].
@ProviderFor(dpurchaseDocumentRef)
const dpurchaseDocumentRefProvider = DpurchaseDocumentRefFamily();

/// 購入情報ドキュメントの参照
///
/// Copied from [dpurchaseDocumentRef].
class DpurchaseDocumentRefFamily
    extends Family<DocumentReference<FirestorePurchaseModel>> {
  /// 購入情報ドキュメントの参照
  ///
  /// Copied from [dpurchaseDocumentRef].
  const DpurchaseDocumentRefFamily();

  /// 購入情報ドキュメントの参照
  ///
  /// Copied from [dpurchaseDocumentRef].
  DpurchaseDocumentRefProvider call({
    required String groupId,
    String? purchaseId,
  }) {
    return DpurchaseDocumentRefProvider(
      groupId: groupId,
      purchaseId: purchaseId,
    );
  }

  @override
  DpurchaseDocumentRefProvider getProviderOverride(
    covariant DpurchaseDocumentRefProvider provider,
  ) {
    return call(groupId: provider.groupId, purchaseId: provider.purchaseId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'dpurchaseDocumentRefProvider';
}

/// 購入情報ドキュメントの参照
///
/// Copied from [dpurchaseDocumentRef].
class DpurchaseDocumentRefProvider
    extends AutoDisposeProvider<DocumentReference<FirestorePurchaseModel>> {
  /// 購入情報ドキュメントの参照
  ///
  /// Copied from [dpurchaseDocumentRef].
  DpurchaseDocumentRefProvider({required String groupId, String? purchaseId})
    : this._internal(
        (ref) => dpurchaseDocumentRef(
          ref as DpurchaseDocumentRefRef,
          groupId: groupId,
          purchaseId: purchaseId,
        ),
        from: dpurchaseDocumentRefProvider,
        name: r'dpurchaseDocumentRefProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$dpurchaseDocumentRefHash,
        dependencies: DpurchaseDocumentRefFamily._dependencies,
        allTransitiveDependencies:
            DpurchaseDocumentRefFamily._allTransitiveDependencies,
        groupId: groupId,
        purchaseId: purchaseId,
      );

  DpurchaseDocumentRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
    required this.purchaseId,
  }) : super.internal();

  final String groupId;
  final String? purchaseId;

  @override
  Override overrideWith(
    DocumentReference<FirestorePurchaseModel> Function(
      DpurchaseDocumentRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DpurchaseDocumentRefProvider._internal(
        (ref) => create(ref as DpurchaseDocumentRefRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        groupId: groupId,
        purchaseId: purchaseId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DocumentReference<FirestorePurchaseModel>>
  createElement() {
    return _DpurchaseDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DpurchaseDocumentRefProvider &&
        other.groupId == groupId &&
        other.purchaseId == purchaseId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);
    hash = _SystemHash.combine(hash, purchaseId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DpurchaseDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestorePurchaseModel>> {
  /// The parameter `groupId` of this provider.
  String get groupId;

  /// The parameter `purchaseId` of this provider.
  String? get purchaseId;
}

class _DpurchaseDocumentRefProviderElement
    extends
        AutoDisposeProviderElement<DocumentReference<FirestorePurchaseModel>>
    with DpurchaseDocumentRefRef {
  _DpurchaseDocumentRefProviderElement(super.provider);

  @override
  String get groupId => (origin as DpurchaseDocumentRefProvider).groupId;
  @override
  String? get purchaseId => (origin as DpurchaseDocumentRefProvider).purchaseId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
