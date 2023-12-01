// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wanter_name_suggestion.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$wanterNameSuggestionHash() =>
    r'f50edfaab8c89527cdbfb4d27d959f6e2d326372';

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
