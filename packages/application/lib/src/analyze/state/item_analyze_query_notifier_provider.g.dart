// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'item_analyze_query_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ItemAnalyzeQueryNotifier)
const itemAnalyzeQueryProvider = ItemAnalyzeQueryNotifierProvider._();

final class ItemAnalyzeQueryNotifierProvider
    extends $NotifierProvider<ItemAnalyzeQueryNotifier, ItemAnalyzeQuery> {
  const ItemAnalyzeQueryNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'itemAnalyzeQueryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$itemAnalyzeQueryNotifierHash();

  @$internal
  @override
  ItemAnalyzeQueryNotifier create() => ItemAnalyzeQueryNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ItemAnalyzeQuery value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ItemAnalyzeQuery>(value),
    );
  }
}

String _$itemAnalyzeQueryNotifierHash() =>
    r'd424ea29429cdb52befdc08c8f56a7a035ac459d';

abstract class _$ItemAnalyzeQueryNotifier extends $Notifier<ItemAnalyzeQuery> {
  ItemAnalyzeQuery build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ItemAnalyzeQuery, ItemAnalyzeQuery>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ItemAnalyzeQuery, ItemAnalyzeQuery>,
              ItemAnalyzeQuery,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
