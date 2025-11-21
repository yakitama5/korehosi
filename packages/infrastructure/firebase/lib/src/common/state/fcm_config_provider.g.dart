// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'fcm_config_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fcmConfig)
const fcmConfigProvider = FcmConfigProvider._();

final class FcmConfigProvider
    extends $FunctionalProvider<FCMConfig, FCMConfig, FCMConfig>
    with $Provider<FCMConfig> {
  const FcmConfigProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fcmConfigProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fcmConfigHash();

  @$internal
  @override
  $ProviderElement<FCMConfig> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FCMConfig create(Ref ref) {
    return fcmConfig(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FCMConfig value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FCMConfig>(value),
    );
  }
}

String _$fcmConfigHash() => r'6f8dd18d4b5218bcb06d380fc61ecff154252d6a';
