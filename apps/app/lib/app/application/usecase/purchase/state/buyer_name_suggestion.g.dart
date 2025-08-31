// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buyer_name_suggestion.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$buyerNameSuggestionHash() =>
    r'f8d3eecf1b97a80914905e3074195bde4fcdbfba';

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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BuyerNameSuggestionRef = AutoDisposeFutureProviderRef<List<String>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
