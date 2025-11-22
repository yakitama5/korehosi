// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'purchase_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(purchaseUsecase)
const purchaseUsecaseProvider = PurchaseUsecaseProvider._();

final class PurchaseUsecaseProvider
    extends
        $FunctionalProvider<PurchaseUsecase, PurchaseUsecase, PurchaseUsecase>
    with $Provider<PurchaseUsecase> {
  const PurchaseUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'purchaseUsecaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$purchaseUsecaseHash();

  @$internal
  @override
  $ProviderElement<PurchaseUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PurchaseUsecase create(Ref ref) {
    return purchaseUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PurchaseUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PurchaseUsecase>(value),
    );
  }
}

String _$purchaseUsecaseHash() => r'de5deb44672aebb37ba1f09234951d41bd20b558';
