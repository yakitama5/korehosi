// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_purchase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$purchaseCollectionRefHash() =>
    r'61dd7b371a5ee9611e0651a6daaec964f303a673';

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

/// 購入情報コレクションの参照
///
/// Copied from [purchaseCollectionRef].
@ProviderFor(purchaseCollectionRef)
const purchaseCollectionRefProvider = PurchaseCollectionRefFamily();

/// 購入情報コレクションの参照
///
/// Copied from [purchaseCollectionRef].
class PurchaseCollectionRefFamily
    extends Family<CollectionReference<FirestorePurchaseModel>> {
  /// 購入情報コレクションの参照
  ///
  /// Copied from [purchaseCollectionRef].
  const PurchaseCollectionRefFamily();

  /// 購入情報コレクションの参照
  ///
  /// Copied from [purchaseCollectionRef].
  PurchaseCollectionRefProvider call({required String groupId}) {
    return PurchaseCollectionRefProvider(groupId: groupId);
  }

  @override
  PurchaseCollectionRefProvider getProviderOverride(
    covariant PurchaseCollectionRefProvider provider,
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
  String? get name => r'purchaseCollectionRefProvider';
}

/// 購入情報コレクションの参照
///
/// Copied from [purchaseCollectionRef].
class PurchaseCollectionRefProvider
    extends AutoDisposeProvider<CollectionReference<FirestorePurchaseModel>> {
  /// 購入情報コレクションの参照
  ///
  /// Copied from [purchaseCollectionRef].
  PurchaseCollectionRefProvider({required String groupId})
    : this._internal(
        (ref) => purchaseCollectionRef(
          ref as PurchaseCollectionRefRef,
          groupId: groupId,
        ),
        from: purchaseCollectionRefProvider,
        name: r'purchaseCollectionRefProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$purchaseCollectionRefHash,
        dependencies: PurchaseCollectionRefFamily._dependencies,
        allTransitiveDependencies:
            PurchaseCollectionRefFamily._allTransitiveDependencies,
        groupId: groupId,
      );

  PurchaseCollectionRefProvider._internal(
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
      PurchaseCollectionRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PurchaseCollectionRefProvider._internal(
        (ref) => create(ref as PurchaseCollectionRefRef),
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
    return _PurchaseCollectionRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PurchaseCollectionRefProvider && other.groupId == groupId;
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
mixin PurchaseCollectionRefRef
    on AutoDisposeProviderRef<CollectionReference<FirestorePurchaseModel>> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _PurchaseCollectionRefProviderElement
    extends
        AutoDisposeProviderElement<CollectionReference<FirestorePurchaseModel>>
    with PurchaseCollectionRefRef {
  _PurchaseCollectionRefProviderElement(super.provider);

  @override
  String get groupId => (origin as PurchaseCollectionRefProvider).groupId;
}

String _$purchaseDocumentRefHash() =>
    r'1804bf6edbef75d2f6d4ef5fcc6e46e659c3cf43';

/// 購入情報ドキュメントの参照
///
/// Copied from [purchaseDocumentRef].
@ProviderFor(purchaseDocumentRef)
const purchaseDocumentRefProvider = PurchaseDocumentRefFamily();

/// 購入情報ドキュメントの参照
///
/// Copied from [purchaseDocumentRef].
class PurchaseDocumentRefFamily
    extends Family<DocumentReference<FirestorePurchaseModel>> {
  /// 購入情報ドキュメントの参照
  ///
  /// Copied from [purchaseDocumentRef].
  const PurchaseDocumentRefFamily();

  /// 購入情報ドキュメントの参照
  ///
  /// Copied from [purchaseDocumentRef].
  PurchaseDocumentRefProvider call({
    required String groupId,
    String? purchaseId,
  }) {
    return PurchaseDocumentRefProvider(
      groupId: groupId,
      purchaseId: purchaseId,
    );
  }

  @override
  PurchaseDocumentRefProvider getProviderOverride(
    covariant PurchaseDocumentRefProvider provider,
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
  String? get name => r'purchaseDocumentRefProvider';
}

/// 購入情報ドキュメントの参照
///
/// Copied from [purchaseDocumentRef].
class PurchaseDocumentRefProvider
    extends AutoDisposeProvider<DocumentReference<FirestorePurchaseModel>> {
  /// 購入情報ドキュメントの参照
  ///
  /// Copied from [purchaseDocumentRef].
  PurchaseDocumentRefProvider({required String groupId, String? purchaseId})
    : this._internal(
        (ref) => purchaseDocumentRef(
          ref as PurchaseDocumentRefRef,
          groupId: groupId,
          purchaseId: purchaseId,
        ),
        from: purchaseDocumentRefProvider,
        name: r'purchaseDocumentRefProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$purchaseDocumentRefHash,
        dependencies: PurchaseDocumentRefFamily._dependencies,
        allTransitiveDependencies:
            PurchaseDocumentRefFamily._allTransitiveDependencies,
        groupId: groupId,
        purchaseId: purchaseId,
      );

  PurchaseDocumentRefProvider._internal(
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
      PurchaseDocumentRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PurchaseDocumentRefProvider._internal(
        (ref) => create(ref as PurchaseDocumentRefRef),
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
    return _PurchaseDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PurchaseDocumentRefProvider &&
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
mixin PurchaseDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestorePurchaseModel>> {
  /// The parameter `groupId` of this provider.
  String get groupId;

  /// The parameter `purchaseId` of this provider.
  String? get purchaseId;
}

class _PurchaseDocumentRefProviderElement
    extends
        AutoDisposeProviderElement<DocumentReference<FirestorePurchaseModel>>
    with PurchaseDocumentRefRef {
  _PurchaseDocumentRefProviderElement(super.provider);

  @override
  String get groupId => (origin as PurchaseDocumentRefProvider).groupId;
  @override
  String? get purchaseId => (origin as PurchaseDocumentRefProvider).purchaseId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
