// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'notification_token_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// DI用 (依存性逆転のためドメイン層に定義)

@ProviderFor(notificationTokenRepository)
const notificationTokenRepositoryProvider =
    NotificationTokenRepositoryProvider._();

/// DI用 (依存性逆転のためドメイン層に定義)

final class NotificationTokenRepositoryProvider
    extends
        $FunctionalProvider<
          NotificationTokenRepository,
          NotificationTokenRepository,
          NotificationTokenRepository
        >
    with $Provider<NotificationTokenRepository> {
  /// DI用 (依存性逆転のためドメイン層に定義)
  const NotificationTokenRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationTokenRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationTokenRepositoryHash();

  @$internal
  @override
  $ProviderElement<NotificationTokenRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  NotificationTokenRepository create(Ref ref) {
    return notificationTokenRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NotificationTokenRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NotificationTokenRepository>(value),
    );
  }
}

String _$notificationTokenRepositoryHash() =>
    r'c1c4598d30645e724caa8d60d19c8c4c38022e5d';
