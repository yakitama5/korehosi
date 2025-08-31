// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_config.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$remoteConfigHash() => r'36d7b397a177e8516a81814c1f515ebf6415c1a6';

/// Firebase Remote Config
/// テスト時にDIすることを考慮して、Providerとして定義
///
/// Copied from [remoteConfig].
@ProviderFor(remoteConfig)
final remoteConfigProvider = FutureProvider<FirebaseRemoteConfig>.internal(
  remoteConfig,
  name: r'remoteConfigProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$remoteConfigHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RemoteConfigRef = FutureProviderRef<FirebaseRemoteConfig>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
