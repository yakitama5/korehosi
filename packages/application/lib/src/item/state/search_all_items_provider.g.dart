// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'search_all_items_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 詳細画面間の移動に利用する、現在の検索結果すべて。

@ProviderFor(searchAllItems)
const searchAllItemsProvider = SearchAllItemsProvider._();

/// 詳細画面間の移動に利用する、現在の検索結果すべて。

final class SearchAllItemsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Item>>,
          List<Item>,
          FutureOr<List<Item>>
        >
    with $FutureModifier<List<Item>>, $FutureProvider<List<Item>> {
  /// 詳細画面間の移動に利用する、現在の検索結果すべて。
  const SearchAllItemsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchAllItemsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchAllItemsHash();

  @$internal
  @override
  $FutureProviderElement<List<Item>> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<Item>> create(Ref ref) {
    return searchAllItems(ref);
  }
}

String _$searchAllItemsHash() => r'84b2919ef75012a2b7db4d494d84ab680ab4773c';
