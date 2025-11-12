// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'token_timestamp_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tokenTimestampHash() => r'9dae9f8b03a0cae9bf27bc121780f56bd9e42b9c';

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

/// FCMトークンのタイムスタンプを管理するProvider
///
/// Copied from [tokenTimestamp].
@ProviderFor(tokenTimestamp)
const tokenTimestampProvider = TokenTimestampFamily();

/// FCMトークンのタイムスタンプを管理するProvider
///
/// Copied from [tokenTimestamp].
class TokenTimestampFamily extends Family<AsyncValue<DateTime?>> {
  /// FCMトークンのタイムスタンプを管理するProvider
  ///
  /// Copied from [tokenTimestamp].
  const TokenTimestampFamily();

  /// FCMトークンのタイムスタンプを管理するProvider
  ///
  /// Copied from [tokenTimestamp].
  TokenTimestampProvider call({required String token}) {
    return TokenTimestampProvider(token: token);
  }

  @override
  TokenTimestampProvider getProviderOverride(
    covariant TokenTimestampProvider provider,
  ) {
    return call(token: provider.token);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'tokenTimestampProvider';
}

/// FCMトークンのタイムスタンプを管理するProvider
///
/// Copied from [tokenTimestamp].
class TokenTimestampProvider extends AutoDisposeFutureProvider<DateTime?> {
  /// FCMトークンのタイムスタンプを管理するProvider
  ///
  /// Copied from [tokenTimestamp].
  TokenTimestampProvider({required String token})
    : this._internal(
        (ref) => tokenTimestamp(ref as TokenTimestampRef, token: token),
        from: tokenTimestampProvider,
        name: r'tokenTimestampProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$tokenTimestampHash,
        dependencies: TokenTimestampFamily._dependencies,
        allTransitiveDependencies:
            TokenTimestampFamily._allTransitiveDependencies,
        token: token,
      );

  TokenTimestampProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.token,
  }) : super.internal();

  final String token;

  @override
  Override overrideWith(
    FutureOr<DateTime?> Function(TokenTimestampRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: TokenTimestampProvider._internal(
        (ref) => create(ref as TokenTimestampRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        token: token,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<DateTime?> createElement() {
    return _TokenTimestampProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TokenTimestampProvider && other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TokenTimestampRef on AutoDisposeFutureProviderRef<DateTime?> {
  /// The parameter `token` of this provider.
  String get token;
}

class _TokenTimestampProviderElement
    extends AutoDisposeFutureProviderElement<DateTime?>
    with TokenTimestampRef {
  _TokenTimestampProviderElement(super.provider);

  @override
  String get token => (origin as TokenTimestampProvider).token;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
