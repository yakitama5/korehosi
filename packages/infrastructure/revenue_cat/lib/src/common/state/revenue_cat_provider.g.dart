// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'revenue_cat_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// RevenueCat
/// テスト時にDIすることを考慮して、Providerとして定義

@ProviderFor(revenueCat)
const revenueCatProvider = RevenueCatProvider._();

/// RevenueCat
/// テスト時にDIすることを考慮して、Providerとして定義

final class RevenueCatProvider
    extends $FunctionalProvider<Purchases, Purchases, Purchases>
    with $Provider<Purchases> {
  /// RevenueCat
  /// テスト時にDIすることを考慮して、Providerとして定義
  const RevenueCatProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'revenueCatProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$revenueCatHash();

  @$internal
  @override
  $ProviderElement<Purchases> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Purchases create(Ref ref) {
    return revenueCat(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Purchases value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Purchases>(value),
    );
  }
}

String _$revenueCatHash() => r'64a8dbd147f658788bd0ed4052b58fffa25eb6f5';
