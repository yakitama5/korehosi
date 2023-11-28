// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wanter_name_suggestion.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$wanterNameSuggestionHash() =>
    r'4b6461a301fbe9e5b690da74f3f9d364a7df7002';

/// 欲しい人のサジェストリスト
/// 対象は「だれがほしい？」に入力したことのある人 + 現在のグループ内のユーザー
///
/// Copied from [wanterNameSuggestion].
@ProviderFor(wanterNameSuggestion)
final wanterNameSuggestionProvider =
    AutoDisposeFutureProvider<List<String>>.internal(
  wanterNameSuggestion,
  name: r'wanterNameSuggestionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$wanterNameSuggestionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef WanterNameSuggestionRef = AutoDisposeFutureProviderRef<List<String>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
