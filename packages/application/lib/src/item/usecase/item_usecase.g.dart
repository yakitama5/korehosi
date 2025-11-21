// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'item_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(itemUsecase)
const itemUsecaseProvider = ItemUsecaseProvider._();

final class ItemUsecaseProvider
    extends $FunctionalProvider<ItemUsecase, ItemUsecase, ItemUsecase>
    with $Provider<ItemUsecase> {
  const ItemUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'itemUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$itemUsecaseHash();

  @$internal
  @override
  $ProviderElement<ItemUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ItemUsecase create(Ref ref) {
    return itemUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ItemUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ItemUsecase>(value),
    );
  }
}

String _$itemUsecaseHash() => r'9383f73136ec5015f5dcddf7d9a9441d20a064f8';
