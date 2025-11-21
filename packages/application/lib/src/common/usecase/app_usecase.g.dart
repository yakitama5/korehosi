// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'app_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appUsecase)
const appUsecaseProvider = AppUsecaseProvider._();

final class AppUsecaseProvider
    extends $FunctionalProvider<AppUsecase, AppUsecase, AppUsecase>
    with $Provider<AppUsecase> {
  const AppUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appUsecaseHash();

  @$internal
  @override
  $ProviderElement<AppUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppUsecase create(Ref ref) {
    return appUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppUsecase>(value),
    );
  }
}

String _$appUsecaseHash() => r'0cfa5fbee4d6a8a8ab5827576c1b55451a4a3888';
