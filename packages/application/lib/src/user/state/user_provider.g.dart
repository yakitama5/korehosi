// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userHash() => r'956e4dec3579a70e5d76087201d3e742136f708f';

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

/// ユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [user].
@ProviderFor(user)
const userProvider = UserFamily();

/// ユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [user].
class UserFamily extends Family<AsyncValue<User?>> {
  /// ユーザー
  /// データの参照頻度を減らすため、`keepAlive`を指定
  ///
  /// Copied from [user].
  const UserFamily();

  /// ユーザー
  /// データの参照頻度を減らすため、`keepAlive`を指定
  ///
  /// Copied from [user].
  UserProvider call({required UserId userId}) {
    return UserProvider(userId: userId);
  }

  @override
  UserProvider getProviderOverride(covariant UserProvider provider) {
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
  String? get name => r'userProvider';
}

/// ユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [user].
class UserProvider extends StreamProvider<User?> {
  /// ユーザー
  /// データの参照頻度を減らすため、`keepAlive`を指定
  ///
  /// Copied from [user].
  UserProvider({required UserId userId})
    : this._internal(
        (ref) => user(ref as UserRef, userId: userId),
        from: userProvider,
        name: r'userProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$userHash,
        dependencies: UserFamily._dependencies,
        allTransitiveDependencies: UserFamily._allTransitiveDependencies,
        userId: userId,
      );

  UserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final UserId userId;

  @override
  Override overrideWith(Stream<User?> Function(UserRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: UserProvider._internal(
        (ref) => create(ref as UserRef),
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
  StreamProviderElement<User?> createElement() {
    return _UserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserProvider && other.userId == userId;
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
mixin UserRef on StreamProviderRef<User?> {
  /// The parameter `userId` of this provider.
  UserId get userId;
}

class _UserProviderElement extends StreamProviderElement<User?> with UserRef {
  _UserProviderElement(super.provider);

  @override
  UserId get userId => (origin as UserProvider).userId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
