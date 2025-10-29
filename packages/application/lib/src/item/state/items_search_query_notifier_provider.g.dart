// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'items_search_query_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$itemsSearchQueryNotifierHash() =>
    r'33bfb36ea4a7e7ea5161f3499b6e64a96f82a912';

/// ほしいものの検索条件を管理するProvider
///
/// Copied from [ItemsSearchQueryNotifier].
@ProviderFor(ItemsSearchQueryNotifier)
final itemsSearchQueryNotifierProvider =
    AutoDisposeNotifierProvider<
      ItemsSearchQueryNotifier,
      ItemsSearchQuery
    >.internal(
      ItemsSearchQueryNotifier.new,
      name: r'itemsSearchQueryNotifierProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$itemsSearchQueryNotifierHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ItemsSearchQueryNotifier = AutoDisposeNotifier<ItemsSearchQuery>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
