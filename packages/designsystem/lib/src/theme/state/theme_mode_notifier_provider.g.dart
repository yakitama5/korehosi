// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'theme_mode_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$themeModeHash() => r'72254efcdfac3a4a727b89f9e0d0a5fec060a80d';

/// テーマを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している
///
/// Copied from [_ThemeMode].
@ProviderFor(_ThemeMode)
final _themeModeProvider =
    AutoDisposeNotifierProvider<_ThemeMode, ThemeMode>.internal(
      _ThemeMode.new,
      name: r'_themeModeProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$themeModeHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ThemeMode = AutoDisposeNotifier<ThemeMode>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
