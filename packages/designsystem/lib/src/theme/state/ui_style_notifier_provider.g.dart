// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'ui_style_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$uiStyleHash() => r'b771ccec73dffa1b44fa4b80f06cf6b03e48d113';

/// UIスタイルを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している
///
/// Copied from [UiStyle].
@ProviderFor(UiStyle)
final uiStyleProvider = AutoDisposeNotifierProvider<UiStyle, UIStyle>.internal(
  UiStyle.new,
  name: r'uiStyleProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$uiStyleHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UiStyle = AutoDisposeNotifier<UIStyle>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
