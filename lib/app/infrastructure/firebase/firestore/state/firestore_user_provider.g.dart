// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userCollectionRefHash() => r'6f64e7e38206313b5a27c18257d0d5cba50206f9';

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

typedef UserCollectionRefRef
    = AutoDisposeProviderRef<CollectionReference<FirestoreUserModel>>;
String _$userDocumentRefHash() => r'779cfc17f7e2149d988e73f0d19678662e6ec1a0';

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
  UserDocumentRefProvider call({
    String? userId,
  }) {
    return UserDocumentRefProvider(
      userId: userId,
    );
  }

  @override
  UserDocumentRefProvider getProviderOverride(
    covariant UserDocumentRefProvider provider,
  ) {
    return call(
      userId: provider.userId,
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
  UserDocumentRefProvider({
    String? userId,
  }) : this._internal(
          (ref) => userDocumentRef(
            ref as UserDocumentRefRef,
            userId: userId,
          ),
          from: userDocumentRefProvider,
          name: r'userDocumentRefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
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

  final String? userId;

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

mixin UserDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestoreUserModel>> {
  /// The parameter `userId` of this provider.
  String? get userId;
}

class _UserDocumentRefProviderElement
    extends AutoDisposeProviderElement<DocumentReference<FirestoreUserModel>>
    with UserDocumentRefRef {
  _UserDocumentRefProviderElement(super.provider);

  @override
  String? get userId => (origin as UserDocumentRefProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
