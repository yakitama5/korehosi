// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'analytics_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$analyticsHash() => r'8fb06ce3653ba0d954e4379b42d73d731065c520';

/// Firebase Analytics
/// テスト時にDIすることを考慮して、Providerとして定義
///
/// Copied from [analytics].
@ProviderFor(analytics)
final analyticsProvider = Provider<FirebaseAnalytics>.internal(
  analytics,
  name: r'analyticsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$analyticsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AnalyticsRef = ProviderRef<FirebaseAnalytics>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
