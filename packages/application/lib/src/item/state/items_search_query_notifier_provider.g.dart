// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'items_search_query_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// ほしいものの検索条件を管理するProvider

@ProviderFor(ItemsSearchQueryNotifier)
const itemsSearchQueryProvider = ItemsSearchQueryNotifierProvider._();

/// ほしいものの検索条件を管理するProvider
final class ItemsSearchQueryNotifierProvider
    extends $NotifierProvider<ItemsSearchQueryNotifier, ItemsSearchQuery> {
  /// ほしいものの検索条件を管理するProvider
  const ItemsSearchQueryNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'itemsSearchQueryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$itemsSearchQueryNotifierHash();

  @$internal
  @override
  ItemsSearchQueryNotifier create() => ItemsSearchQueryNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ItemsSearchQuery value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ItemsSearchQuery>(value),
    );
  }
}

String _$itemsSearchQueryNotifierHash() =>
    r'ba9b34338098e116c5701d36ac823f0b0b0dda57';

/// ほしいものの検索条件を管理するProvider

abstract class _$ItemsSearchQueryNotifier extends $Notifier<ItemsSearchQuery> {
  ItemsSearchQuery build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ItemsSearchQuery, ItemsSearchQuery>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ItemsSearchQuery, ItemsSearchQuery>,
              ItemsSearchQuery,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
