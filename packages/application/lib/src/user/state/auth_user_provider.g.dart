// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'auth_user_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$authUserHash() => r'df4af207839d28c017692189fce47b42e80502f5';

/// 認証済のユーザー
/// データの参照頻度を減らすため、`keepAlive`を指定
///
/// Copied from [authUser].
@ProviderFor(authUser)
final authUserProvider = FutureProvider<User?>.internal(
  authUser,
  name: r'authUserProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef AuthUserRef = FutureProviderRef<User?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
