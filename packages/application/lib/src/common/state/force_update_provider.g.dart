// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'force_update_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$forceUpdateHash() => r'32e36b3e0ff37d19d7d4afee1d5e6cad41ab0030';

/// アプリ更新が必要な最低バージョン
///
/// Copied from [forceUpdate].
@ProviderFor(forceUpdate)
final forceUpdateProvider = AutoDisposeFutureProvider<bool>.internal(
  forceUpdate,
  name: r'forceUpdateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$forceUpdateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ForceUpdateRef = AutoDisposeFutureProviderRef<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
