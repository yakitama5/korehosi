// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'theme_color_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$themeColorNotifierHash() =>
    r'613177150e7eb509267044427fb3aa17acb8948c';

/// テーマカラーを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している
///
/// Copied from [ThemeColorNotifier].
@ProviderFor(ThemeColorNotifier)
final themeColorNotifierProvider =
    AutoDisposeNotifierProvider<ThemeColorNotifier, ThemeColor>.internal(
      ThemeColorNotifier.new,
      name: r'themeColorNotifierProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$themeColorNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ThemeColorNotifier = AutoDisposeNotifier<ThemeColor>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
