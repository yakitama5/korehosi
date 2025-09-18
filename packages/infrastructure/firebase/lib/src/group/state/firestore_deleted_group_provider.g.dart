// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_deleted_group_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dgroupCollectionRefHash() =>
    r'852610863b94111a962975ad78947306a408f04f';

/// グループコレクションの参照
///
/// Copied from [dgroupCollectionRef].
@ProviderFor(dgroupCollectionRef)
final dgroupCollectionRefProvider =
    AutoDisposeProvider<CollectionReference<FirestoreGroupModel>>.internal(
      dgroupCollectionRef,
      name: r'dgroupCollectionRefProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$dgroupCollectionRefHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DgroupCollectionRefRef =
    AutoDisposeProviderRef<CollectionReference<FirestoreGroupModel>>;
String _$dgroupDocumentRefHash() => r'dc0460d57ed93b0885d868159d2f89835fb02d1a';

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

/// グループドキュメントの参照
///
/// Copied from [dgroupDocumentRef].
@ProviderFor(dgroupDocumentRef)
const dgroupDocumentRefProvider = DgroupDocumentRefFamily();

/// グループドキュメントの参照
///
/// Copied from [dgroupDocumentRef].
class DgroupDocumentRefFamily
    extends Family<DocumentReference<FirestoreGroupModel>> {
  /// グループドキュメントの参照
  ///
  /// Copied from [dgroupDocumentRef].
  const DgroupDocumentRefFamily();

  /// グループドキュメントの参照
  ///
  /// Copied from [dgroupDocumentRef].
  DgroupDocumentRefProvider call({String? groupId}) {
    return DgroupDocumentRefProvider(groupId: groupId);
  }

  @override
  DgroupDocumentRefProvider getProviderOverride(
    covariant DgroupDocumentRefProvider provider,
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
  String? get name => r'dgroupDocumentRefProvider';
}

/// グループドキュメントの参照
///
/// Copied from [dgroupDocumentRef].
class DgroupDocumentRefProvider
    extends AutoDisposeProvider<DocumentReference<FirestoreGroupModel>> {
  /// グループドキュメントの参照
  ///
  /// Copied from [dgroupDocumentRef].
  DgroupDocumentRefProvider({String? groupId})
    : this._internal(
        (ref) =>
            dgroupDocumentRef(ref as DgroupDocumentRefRef, groupId: groupId),
        from: dgroupDocumentRefProvider,
        name: r'dgroupDocumentRefProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$dgroupDocumentRefHash,
        dependencies: DgroupDocumentRefFamily._dependencies,
        allTransitiveDependencies:
            DgroupDocumentRefFamily._allTransitiveDependencies,
        groupId: groupId,
      );

  DgroupDocumentRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.groupId,
  }) : super.internal();

  final String? groupId;

  @override
  Override overrideWith(
    DocumentReference<FirestoreGroupModel> Function(
      DgroupDocumentRefRef provider,
    )
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DgroupDocumentRefProvider._internal(
        (ref) => create(ref as DgroupDocumentRefRef),
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
  AutoDisposeProviderElement<DocumentReference<FirestoreGroupModel>>
  createElement() {
    return _DgroupDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DgroupDocumentRefProvider && other.groupId == groupId;
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
mixin DgroupDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestoreGroupModel>> {
  /// The parameter `groupId` of this provider.
  String? get groupId;
}

class _DgroupDocumentRefProviderElement
    extends AutoDisposeProviderElement<DocumentReference<FirestoreGroupModel>>
    with DgroupDocumentRefRef {
  _DgroupDocumentRefProviderElement(super.provider);

  @override
  String? get groupId => (origin as DgroupDocumentRefProvider).groupId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
