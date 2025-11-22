// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'messaging_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// DI用 (依存性逆転のためドメイン層に定義)

@ProviderFor(messagingService)
const messagingServiceProvider = MessagingServiceProvider._();

/// DI用 (依存性逆転のためドメイン層に定義)

final class MessagingServiceProvider
    extends
        $FunctionalProvider<
          MessagingService,
          MessagingService,
          MessagingService
        >
    with $Provider<MessagingService> {
  /// DI用 (依存性逆転のためドメイン層に定義)
  const MessagingServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'messagingServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$messagingServiceHash();

  @$internal
  @override
  $ProviderElement<MessagingService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MessagingService create(Ref ref) {
    return messagingService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MessagingService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MessagingService>(value),
    );
  }
}

String _$messagingServiceHash() => r'd3e8dbdaab1284f4e3e807f1b92b05a4d26c90c8';
