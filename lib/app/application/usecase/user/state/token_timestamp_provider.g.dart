// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_timestamp_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$tokenTimestampHash() => r'6b2fd15c5b8cc3fd8851ab72144758391820b856';

/// FCMトークンのタイムスタンプを管理するProvider
///
/// Copied from [tokenTimestamp].
@ProviderFor(tokenTimestamp)
final tokenTimestampProvider = AutoDisposeFutureProvider<DateTime?>.internal(
  tokenTimestamp,
  name: r'tokenTimestampProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$tokenTimestampHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TokenTimestampRef = AutoDisposeFutureProviderRef<DateTime?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
