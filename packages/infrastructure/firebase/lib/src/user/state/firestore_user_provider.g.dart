// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'firestore_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userCollectionRefHash() => r'1a0a25e375965d7d6d7afd4fe5d5e5207486865f';

/// ユーザーコレクションの参照
///
/// Copied from [userCollectionRef].
@ProviderFor(userCollectionRef)
final userCollectionRefProvider =
    AutoDisposeProvider<CollectionReference<FirestoreUserModel>>.internal(
      userCollectionRef,
      name: r'userCollectionRefProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$userCollectionRefHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UserCollectionRefRef =
    AutoDisposeProviderRef<CollectionReference<FirestoreUserModel>>;
String _$userDocumentRefHash() => r'b38ba0f7fbe0e0d4e4daa7190481e4123f794bdf';

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

/// ユーザードキュメントの参照
///
/// Copied from [userDocumentRef].
@ProviderFor(userDocumentRef)
const userDocumentRefProvider = UserDocumentRefFamily();

/// ユーザードキュメントの参照
///
/// Copied from [userDocumentRef].
class UserDocumentRefFamily
    extends Family<DocumentReference<FirestoreUserModel>> {
  /// ユーザードキュメントの参照
  ///
  /// Copied from [userDocumentRef].
  const UserDocumentRefFamily();

  /// ユーザードキュメントの参照
  ///
  /// Copied from [userDocumentRef].
  UserDocumentRefProvider call({UserId? userId}) {
    return UserDocumentRefProvider(userId: userId);
  }

  @override
  UserDocumentRefProvider getProviderOverride(
    covariant UserDocumentRefProvider provider,
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
  String? get name => r'userDocumentRefProvider';
}

/// ユーザードキュメントの参照
///
/// Copied from [userDocumentRef].
class UserDocumentRefProvider
    extends AutoDisposeProvider<DocumentReference<FirestoreUserModel>> {
  /// ユーザードキュメントの参照
  ///
  /// Copied from [userDocumentRef].
  UserDocumentRefProvider({UserId? userId})
    : this._internal(
        (ref) => userDocumentRef(ref as UserDocumentRefRef, userId: userId),
        from: userDocumentRefProvider,
        name: r'userDocumentRefProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$userDocumentRefHash,
        dependencies: UserDocumentRefFamily._dependencies,
        allTransitiveDependencies:
            UserDocumentRefFamily._allTransitiveDependencies,
        userId: userId,
      );

  UserDocumentRefProvider._internal(
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
    DocumentReference<FirestoreUserModel> Function(UserDocumentRefRef provider)
    create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserDocumentRefProvider._internal(
        (ref) => create(ref as UserDocumentRefRef),
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
    return _UserDocumentRefProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserDocumentRefProvider && other.userId == userId;
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
mixin UserDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestoreUserModel>> {
  /// The parameter `userId` of this provider.
  UserId? get userId;
}

class _UserDocumentRefProviderElement
    extends AutoDisposeProviderElement<DocumentReference<FirestoreUserModel>>
    with UserDocumentRefRef {
  _UserDocumentRefProviderElement(super.provider);

  @override
  UserId? get userId => (origin as UserDocumentRefProvider).userId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
