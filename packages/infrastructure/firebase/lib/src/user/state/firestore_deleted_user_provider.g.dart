// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_deleted_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$duserCollectionRefHash() =>
    r'878bc3333c7897a50e8ddab8f7d4799a73bcdd75';

/// 削除済ユーザーコレクションの参照
///
/// Copied from [duserCollectionRef].
@ProviderFor(duserCollectionRef)
final duserCollectionRefProvider =
    AutoDisposeProvider<CollectionReference<FirestoreUserModel>>.internal(
      duserCollectionRef,
      name: r'duserCollectionRefProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$duserCollectionRefHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DuserCollectionRefRef =
    AutoDisposeProviderRef<CollectionReference<FirestoreUserModel>>;
String _$duserDocumentRefHash() => r'60e283c2ea8de6d5e92cacec225f2f3bae7beeb9';

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

/// 削除済ユーザードキュメントの参照
///
/// Copied from [duserDocumentRef].
@ProviderFor(duserDocumentRef)
const duserDocumentRefProvider = DuserDocumentRefFamily();

/// 削除済ユーザードキュメントの参照
///
/// Copied from [duserDocumentRef].
class DuserDocumentRefFamily
    extends Family<DocumentReference<FirestoreUserModel>> {
  /// 削除済ユーザードキュメントの参照
  ///
  /// Copied from [duserDocumentRef].
  const DuserDocumentRefFamily();

  /// 削除済ユーザードキュメントの参照
  ///
  /// Copied from [duserDocumentRef].
  DuserDocumentRefProvider call({UserId? userId}) {
    return DuserDocumentRefProvider(userId: userId);
  }

  @override
  DuserDocumentRefProvider getProviderOverride(
    covariant DuserDocumentRefProvider provider,
  ) {
    return call(userId: provider.userId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'duserDocumentRefProvider';
}

/// 削除済ユーザードキュメントの参照
///
/// Copied from [duserDocumentRef].
class DuserDocumentRefProvider
    extends AutoDisposeProvider<DocumentReference<FirestoreUserModel>> {
  /// 削除済ユーザードキュメントの参照
  ///
  /// Copied from [duserDocumentRef].
  DuserDocumentRefProvider({UserId? userId})
    : this._internal(
        (ref) => duserDocumentRef(ref as DuserDocumentRefRef, userId: userId),
        from: duserDocumentRefProvider,
        name: r'duserDocumentRefProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$duserDocumentRefHash,
        dependencies: DuserDocumentRefFamily._dependencies,
        allTransitiveDependencies:
            DuserDocumentRefFamily._allTransitiveDependencies,
        userId: userId,
      );

  DuserDocumentRefProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final UserId? userId;

  @override
  Override overrideWith(
    DocumentReference<FirestoreUserModel> Function(DuserDocumentRefRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DuserDocumentRefProvider._internal(
        (ref) => create(ref as DuserDocumentRefRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DocumentReference<FirestoreUserModel>>
  createElement() {
    return _DuserDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DuserDocumentRefProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DuserDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestoreUserModel>> {
  /// The parameter `userId` of this provider.
  UserId? get userId;
}

class _DuserDocumentRefProviderElement
    extends AutoDisposeProviderElement<DocumentReference<FirestoreUserModel>>
    with DuserDocumentRefRef {
  _DuserDocumentRefProviderElement(super.provider);

  @override
  UserId? get userId => (origin as DuserDocumentRefProvider).userId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
