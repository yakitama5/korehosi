// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'user_session_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// DI用 (依存性逆転のためドメイン層に定義)

@ProviderFor(userSessionRepository)
const userSessionRepositoryProvider = UserSessionRepositoryProvider._();

/// DI用 (依存性逆転のためドメイン層に定義)

final class UserSessionRepositoryProvider
    extends
        $FunctionalProvider<
          UserSessionRepository,
          UserSessionRepository,
          UserSessionRepository
        >
    with $Provider<UserSessionRepository> {
  /// DI用 (依存性逆転のためドメイン層に定義)
  const UserSessionRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userSessionRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userSessionRepositoryHash();

  @$internal
  @override
  $ProviderElement<UserSessionRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  UserSessionRepository create(Ref ref) {
    return userSessionRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserSessionRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserSessionRepository>(value),
    );
  }
}

String _$userSessionRepositoryHash() =>
    r'a4b00a962d94fcc846975e2d696834771cde0c9f';
