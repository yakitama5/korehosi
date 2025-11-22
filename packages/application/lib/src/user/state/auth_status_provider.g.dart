// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'auth_status_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 認証状態

@ProviderFor(authStatus)
const authStatusProvider = AuthStatusProvider._();

/// 認証状態

final class AuthStatusProvider
    extends
        $FunctionalProvider<
          AsyncValue<AuthStatus?>,
          AuthStatus?,
          Stream<AuthStatus?>
        >
    with $FutureModifier<AuthStatus?>, $StreamProvider<AuthStatus?> {
  /// 認証状態
  const AuthStatusProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authStatusProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authStatusHash();

  @$internal
  @override
  $StreamProviderElement<AuthStatus?> $createElement(
    $ProviderPointer pointer,
  ) => $StreamProviderElement(pointer);

  @override
  Stream<AuthStatus?> create(Ref ref) {
    return authStatus(ref);
  }
}

String _$authStatusHash() => r'571b4bf908b8dc5312fde78ae19e34d71e873bdd';
