// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'analyze_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(analyzeUsecase)
const analyzeUsecaseProvider = AnalyzeUsecaseProvider._();

final class AnalyzeUsecaseProvider
    extends $FunctionalProvider<AnalyzeUsecase, AnalyzeUsecase, AnalyzeUsecase>
    with $Provider<AnalyzeUsecase> {
  const AnalyzeUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'analyzeUsecaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$analyzeUsecaseHash();

  @$internal
  @override
  $ProviderElement<AnalyzeUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AnalyzeUsecase create(Ref ref) {
    return analyzeUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AnalyzeUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AnalyzeUsecase>(value),
    );
  }
}

String _$analyzeUsecaseHash() => r'5a12cd124e6c7b5d6438e323580419cee2f9d00b';
