// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buyer_name_suggestion.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$buyerNameSuggestionHash() =>
    r'7244caa8b2271c7eb3cdcbb3749a6152cde94733';

/// 購入者のサジェストリスト
/// 対象は購入者に入力したことのある人 + 現在のグループ内のユーザー
///
/// Copied from [buyerNameSuggestion].
@ProviderFor(buyerNameSuggestion)
final buyerNameSuggestionProvider =
    AutoDisposeFutureProvider<List<String>>.internal(
  buyerNameSuggestion,
  name: r'buyerNameSuggestionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$buyerNameSuggestionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef BuyerNameSuggestionRef = AutoDisposeFutureProviderRef<List<String>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
