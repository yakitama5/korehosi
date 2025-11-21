// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'app_latest_version_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appLatestVersion)
const appLatestVersionProvider = AppLatestVersionProvider._();

final class AppLatestVersionProvider
    extends $FunctionalProvider<AsyncValue<Version>, Version, Stream<Version>>
    with $FutureModifier<Version>, $StreamProvider<Version> {
  const AppLatestVersionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appLatestVersionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appLatestVersionHash();

  @$internal
  @override
  $StreamProviderElement<Version> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<Version> create(Ref ref) {
    return appLatestVersion(ref);
  }
}

String _$appLatestVersionHash() => r'f65b69fc9217b01d86b567a74be8b7813f5e668f';
