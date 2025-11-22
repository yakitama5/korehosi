// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'auth_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 認証済のユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定

@ProviderFor(authUser)
const authUserProvider = AuthUserProvider._();

/// 認証済のユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定

final class AuthUserProvider
    extends $FunctionalProvider<AsyncValue<User?>, User?, FutureOr<User?>>
    with $FutureModifier<User?>, $FutureProvider<User?> {
  /// 認証済のユーザー
  /// データの参照頻度を減らすため、`keepAlive`を指定
  const AuthUserProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authUserProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authUserHash();

  @$internal
  @override
  $FutureProviderElement<User?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<User?> create(Ref ref) {
    return authUser(ref);
  }
}

String _$authUserHash() => r'd41eb032c3a6756672432c840fa5fd09c4ac4999';
