// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'app_build_config_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appBuildConfig)
const appBuildConfigProvider = AppBuildConfigProvider._();

final class AppBuildConfigProvider
    extends $FunctionalProvider<AppBuildConfig, AppBuildConfig, AppBuildConfig>
    with $Provider<AppBuildConfig> {
  const AppBuildConfigProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appBuildConfigProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appBuildConfigHash();

  @$internal
  @override
  $ProviderElement<AppBuildConfig> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppBuildConfig create(Ref ref) {
    return appBuildConfig(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppBuildConfig value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppBuildConfig>(value),
    );
  }
}

String _$appBuildConfigHash() => r'd4de2441f05786a30e954ce90fc0970a35426ab6';
