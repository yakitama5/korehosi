// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'app_loading_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loadingNotifierHash() => r'af1996d9ac77e923458cbf2039e2302f793c28b6';

/// アプリ全体で共通するローディング表示を管理
///
/// Copied from [LoadingNotifier].
@ProviderFor(LoadingNotifier)
final loadingNotifierProvider =
    AutoDisposeNotifierProvider<LoadingNotifier, bool>.internal(
      LoadingNotifier.new,
      name: r'loadingNotifierProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$loadingNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$LoadingNotifier = AutoDisposeNotifier<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
