// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_group_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$groupCollectionRefHash() =>
    r'93f5f8de12892712ef629be18e92341f2ec90b9a';

/// グループコレクションの参照
///
/// Copied from [groupCollectionRef].
@ProviderFor(groupCollectionRef)
final groupCollectionRefProvider =
    AutoDisposeProvider<CollectionReference<FirestoreGroupModel>>.internal(
  groupCollectionRef,
  name: r'groupCollectionRefProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$groupCollectionRefHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GroupCollectionRefRef
    = AutoDisposeProviderRef<CollectionReference<FirestoreGroupModel>>;
String _$groupDocumentRefHash() => r'e46f9dc1cd9136cc372b0973f51e56e24ef5153b';

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
/// Copied from [groupDocumentRef].
@ProviderFor(groupDocumentRef)
const groupDocumentRefProvider = GroupDocumentRefFamily();

/// グループドキュメントの参照
///
/// Copied from [groupDocumentRef].
class GroupDocumentRefFamily
    extends Family<DocumentReference<FirestoreGroupModel>> {
  /// グループドキュメントの参照
  ///
  /// Copied from [groupDocumentRef].
  const GroupDocumentRefFamily();

  /// グループドキュメントの参照
  ///
  /// Copied from [groupDocumentRef].
  GroupDocumentRefProvider call({
    String? groupId,
  }) {
    return GroupDocumentRefProvider(
      groupId: groupId,
    );
  }

  @override
  GroupDocumentRefProvider getProviderOverride(
    covariant GroupDocumentRefProvider provider,
  ) {
    return call(
      groupId: provider.groupId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'groupDocumentRefProvider';
}

/// グループドキュメントの参照
///
/// Copied from [groupDocumentRef].
class GroupDocumentRefProvider
    extends AutoDisposeProvider<DocumentReference<FirestoreGroupModel>> {
  /// グループドキュメントの参照
  ///
  /// Copied from [groupDocumentRef].
  GroupDocumentRefProvider({
    String? groupId,
  }) : this._internal(
          (ref) => groupDocumentRef(
            ref as GroupDocumentRefRef,
            groupId: groupId,
          ),
          from: groupDocumentRefProvider,
          name: r'groupDocumentRefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$groupDocumentRefHash,
          dependencies: GroupDocumentRefFamily._dependencies,
          allTransitiveDependencies:
              GroupDocumentRefFamily._allTransitiveDependencies,
          groupId: groupId,
        );

  GroupDocumentRefProvider._internal(
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
            GroupDocumentRefRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GroupDocumentRefProvider._internal(
        (ref) => create(ref as GroupDocumentRefRef),
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
    return _GroupDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GroupDocumentRefProvider && other.groupId == groupId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, groupId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GroupDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestoreGroupModel>> {
  /// The parameter `groupId` of this provider.
  String? get groupId;
}

class _GroupDocumentRefProviderElement
    extends AutoDisposeProviderElement<DocumentReference<FirestoreGroupModel>>
    with GroupDocumentRefRef {
  _GroupDocumentRefProviderElement(super.provider);

  @override
  String? get groupId => (origin as GroupDocumentRefProvider).groupId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
