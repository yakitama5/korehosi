// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_deleted_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$duserCollectionRefHash() =>
    r'a8f52d1c717ef84586c6379bfa877ca0c4fa472a';

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

typedef DuserCollectionRefRef
    = AutoDisposeProviderRef<CollectionReference<FirestoreUserModel>>;
String _$duserDocumentRefHash() => r'1e018bce4c4ae7e39f0e069936612c314db6a074';

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
  DuserDocumentRefProvider call({
    String? userId,
  }) {
    return DuserDocumentRefProvider(
      userId: userId,
    );
  }

  @override
  DuserDocumentRefProvider getProviderOverride(
    covariant DuserDocumentRefProvider provider,
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
  DuserDocumentRefProvider({
    String? userId,
  }) : this._internal(
          (ref) => duserDocumentRef(
            ref as DuserDocumentRefRef,
            userId: userId,
          ),
          from: duserDocumentRefProvider,
          name: r'duserDocumentRefProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
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

  final String? userId;

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

mixin DuserDocumentRefRef
    on AutoDisposeProviderRef<DocumentReference<FirestoreUserModel>> {
  /// The parameter `userId` of this provider.
  String? get userId;
}

class _DuserDocumentRefProviderElement
    extends AutoDisposeProviderElement<DocumentReference<FirestoreUserModel>>
    with DuserDocumentRefRef {
  _DuserDocumentRefProviderElement(super.provider);

  @override
  String? get userId => (origin as DuserDocumentRefProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
