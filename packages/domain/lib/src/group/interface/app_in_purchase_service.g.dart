// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'app_in_purchase_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// DI用 (依存性逆転のためドメイン層に定義)

@ProviderFor(appInPurchaseService)
const appInPurchaseServiceProvider = AppInPurchaseServiceProvider._();

/// DI用 (依存性逆転のためドメイン層に定義)

final class AppInPurchaseServiceProvider
    extends
        $FunctionalProvider<
          AppInPurchaseService,
          AppInPurchaseService,
          AppInPurchaseService
        >
    with $Provider<AppInPurchaseService> {
  /// DI用 (依存性逆転のためドメイン層に定義)
  const AppInPurchaseServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appInPurchaseServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appInPurchaseServiceHash();

  @$internal
  @override
  $ProviderElement<AppInPurchaseService> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AppInPurchaseService create(Ref ref) {
    return appInPurchaseService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppInPurchaseService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppInPurchaseService>(value),
    );
  }
}

String _$appInPurchaseServiceHash() =>
    r'6ab0e30dc6cee3e4c399e18262ff4137d748fd81';
