// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'items_view_layout_notifier_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ItemsViewLayoutNotifier)
const itemsViewLayoutProvider = ItemsViewLayoutNotifierProvider._();

final class ItemsViewLayoutNotifierProvider
    extends $NotifierProvider<ItemsViewLayoutNotifier, ViewLayout> {
  const ItemsViewLayoutNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'itemsViewLayoutProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$itemsViewLayoutNotifierHash();

  @$internal
  @override
  ItemsViewLayoutNotifier create() => ItemsViewLayoutNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ViewLayout value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ViewLayout>(value),
    );
  }
}

String _$itemsViewLayoutNotifierHash() =>
    r'98c1188c6b6c9255a9ec4489ebb811dba80bc954';

abstract class _$ItemsViewLayoutNotifier extends $Notifier<ViewLayout> {
  ViewLayout build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<ViewLayout, ViewLayout>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ViewLayout, ViewLayout>,
              ViewLayout,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
