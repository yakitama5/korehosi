// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_child_view_purchase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$cpurchaseCollectionRefHash() =>
    r'0d4a79a58628da0e3639bf34d882fe09c6760e2f';

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

/// (子供参照用)購入情報コレクションの参照
///
/// Copied from [cpurchaseCollectionRef].
@ProviderFor(cpurchaseCollectionRef)
const cpurchaseCollectionRefProvider = CpurchaseCollectionRefFamily();

/// (子供参照用)購入情報コレクションの参照
///
/// Copied from [cpurchaseCollectionRef].
class CpurchaseCollectionRefFamily
    extends Family<CollectionReference<FirestorePurchaseModel>> {
  /// (子供参照用)購入情報コレクションの参照
  ///
  /// Copied from [cpurchaseCollectionRef].
  const CpurchaseCollectionRefFamily();

  /// (子供参照用)購入情報コレクションの参照
  ///
  /// Copied from [cpurchaseCollectionRef].
  CpurchaseCollectionRefProvider call({required String groupId}) {
    return CpurchaseCollectionRefProvider(groupId: groupId);
  }

  @override
  CpurchaseCollectionRefProvider getProviderOverride(
    covariant CpurchaseCollectionRefProvider provider,
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
  String? get name => r'cpurchaseCollectionRefProvider';
}

/// (子供参照用)購入情報コレクションの参照
///
/// Copied from [cpurchaseCollectionRef].
class CpurchaseCollectionRefProvider
    extends AutoDisposeProvider<CollectionReference<FirestorePurchaseModel>> {
  /// (子供参照用)購入情報コレクションの参照
  ///
  /// Copied from [cpurchaseCollectionRef].
  CpurchaseCollectionRefProvider({required String groupId})
    : this._internal(
        (ref) => cpurchaseCollectionRef(
          ref as CpurchaseCollectionRefRef,
          groupId: groupId,
        ),
        from: cpurchaseCollectionRefProvider,
        name: r'cpurchaseCollectionRefProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$cpurchaseCollectionRefHash,
        dependencies: CpurchaseCollectionRefFamily._dependencies,
        allTransitiveDependencies:
            CpurchaseCollectionRefFamily._allTransitiveDependencies,
        groupId: groupId,
      );

  CpurchaseCollectionRefProvider._internal(
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
      CpurchaseCollectionRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CpurchaseCollectionRefProvider._internal(
        (ref) => create(ref as CpurchaseCollectionRefRef),
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
    return _CpurchaseCollectionRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CpurchaseCollectionRefProvider && other.groupId == groupId;
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
mixin CpurchaseCollectionRefRef
    on AutoDisposeProviderRef<CollectionReference<FirestorePurchaseModel>> {
  /// The parameter `groupId` of this provider.
  String get groupId;
}

class _CpurchaseCollectionRefProviderElement
    extends
        AutoDisposeProviderElement<CollectionReference<FirestorePurchaseModel>>
    with CpurchaseCollectionRefRef {
  _CpurchaseCollectionRefProviderElement(super.provider);

  @override
  String get groupId => (origin as CpurchaseCollectionRefProvider).groupId;
}

String _$cpurchaseDocumentRefHash() =>
    r'147723b4bfc8e7b2445f606b5f4a0b91b90e89be';

/// (子供参照用)購入情報ドキュメントの参照
///
/// Copied from [cpurchaseDocumentRef].
@ProviderFor(cpurchaseDocumentRef)
const cpurchaseDocumentRefProvider = CpurchaseDocumentRefFamily();

/// (子供参照用)購入情報ドキュメントの参照
///
/// Copied from [cpurchaseDocumentRef].
class CpurchaseDocumentRefFamily
    extends Family<DocumentReference<FirestorePurchaseModel>> {
  /// (子供参照用)購入情報ドキュメントの参照
  ///
  /// Copied from [cpurchaseDocumentRef].
  const CpurchaseDocumentRefFamily();

  /// (子供参照用)購入情報ドキュメントの参照
  ///
  /// Copied from [cpurchaseDocumentRef].
  CpurchaseDocumentRefProvider call({
    required String groupId,
    String? purchaseId,
  }) {
    return CpurchaseDocumentRefProvider(
      groupId: groupId,
      purchaseId: purchaseId,
    );
  }

  @override
  CpurchaseDocumentRefProvider getProviderOverride(
    covariant CpurchaseDocumentRefProvider provider,
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
  String? get name => r'cpurchaseDocumentRefProvider';
}

/// (子供参照用)購入情報ドキュメントの参照
///
/// Copied from [cpurchaseDocumentRef].
class CpurchaseDocumentRefProvider
    extends AutoDisposeProvider<DocumentReference<FirestorePurchaseModel>> {
  /// (子供参照用)購入情報ドキュメントの参照
  ///
  /// Copied from [cpurchaseDocumentRef].
  CpurchaseDocumentRefProvider({required String groupId, String? purchaseId})
    : this._internal(
        (ref) => cpurchaseDocumentRef(
          ref as CpurchaseDocumentRefRef,
          groupId: groupId,
          purchaseId: purchaseId,
        ),
        from: cpurchaseDocumentRefProvider,
        name: r'cpurchaseDocumentRefProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$cpurchaseDocumentRefHash,
        dependencies: CpurchaseDocumentRefFamily._dependencies,
        allTransitiveDependencies:
            CpurchaseDocumentRefFamily._allTransitiveDependencies,
        groupId: groupId,
        purchaseId: purchaseId,
      );

  CpurchaseDocumentRefProvider._internal(
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
      CpurchaseDocumentRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CpurchaseDocumentRefProvider._internal(
        (ref) => create(ref as CpurchaseDocumentRefRef),
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
    return _CpurchaseDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CpurchaseDocumentRefProvider &&
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
mixin CpurchaseDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestorePurchaseModel>> {
  /// The parameter `groupId` of this provider.
  String get groupId;

  /// The parameter `purchaseId` of this provider.
  String? get purchaseId;
}

class _CpurchaseDocumentRefProviderElement
    extends
        AutoDisposeProviderElement<DocumentReference<FirestorePurchaseModel>>
    with CpurchaseDocumentRefRef {
  _CpurchaseDocumentRefProviderElement(super.provider);

  @override
  String get groupId => (origin as CpurchaseDocumentRefProvider).groupId;
  @override
  String? get purchaseId => (origin as CpurchaseDocumentRefProvider).purchaseId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
