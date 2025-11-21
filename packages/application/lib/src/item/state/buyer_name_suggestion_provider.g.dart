// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'buyer_name_suggestion_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 購入者のサジェストリスト
/// 対象は購入者に入力したことのある人 + 現在のグループ内のユーザー

@ProviderFor(buyerNameSuggestion)
const buyerNameSuggestionProvider = BuyerNameSuggestionProvider._();

/// 購入者のサジェストリスト
/// 対象は購入者に入力したことのある人 + 現在のグループ内のユーザー

final class BuyerNameSuggestionProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<String>>,
          List<String>,
          FutureOr<List<String>>
        >
    with $FutureModifier<List<String>>, $FutureProvider<List<String>> {
  /// 購入者のサジェストリスト
  /// 対象は購入者に入力したことのある人 + 現在のグループ内のユーザー
  const BuyerNameSuggestionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'buyerNameSuggestionProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$buyerNameSuggestionHash();

  @$internal
  @override
  $FutureProviderElement<List<String>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<String>> create(Ref ref) {
    return buyerNameSuggestion(ref);
  }
}

String _$buyerNameSuggestionHash() =>
    r'7006d3487e56b18f386192765997be5c7565fe9f';
