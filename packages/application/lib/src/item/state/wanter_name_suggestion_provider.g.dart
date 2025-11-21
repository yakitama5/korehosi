// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'wanter_name_suggestion_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 欲しい人のサジェストリスト
/// 対象は「だれがほしい？」に入力したことのある人 + 現在のグループ内のユーザー

@ProviderFor(wanterNameSuggestion)
const wanterNameSuggestionProvider = WanterNameSuggestionProvider._();

/// 欲しい人のサジェストリスト
/// 対象は「だれがほしい？」に入力したことのある人 + 現在のグループ内のユーザー

final class WanterNameSuggestionProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<String>>,
          List<String>,
          FutureOr<List<String>>
        >
    with $FutureModifier<List<String>>, $FutureProvider<List<String>> {
  /// 欲しい人のサジェストリスト
  /// 対象は「だれがほしい？」に入力したことのある人 + 現在のグループ内のユーザー
  const WanterNameSuggestionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'wanterNameSuggestionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$wanterNameSuggestionHash();

  @$internal
  @override
  $FutureProviderElement<List<String>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<String>> create(Ref ref) {
    return wanterNameSuggestion(ref);
  }
}

String _$wanterNameSuggestionHash() =>
    r'26912fd97a5029dca7778e4d14cc9132ca0ef861';
