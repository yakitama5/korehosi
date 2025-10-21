// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wanter_name_suggestion_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$wanterNameSuggestionHash() =>
    r'775613f61e4761c1c7010da36834934467e29735';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WanterNameSuggestionRef = AutoDisposeFutureProviderRef<List<String>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
