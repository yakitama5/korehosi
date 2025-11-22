// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'analyze_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// DI用 (依存性逆転のためドメイン層に定義)

@ProviderFor(analyzeRepository)
const analyzeRepositoryProvider = AnalyzeRepositoryProvider._();

/// DI用 (依存性逆転のためドメイン層に定義)

final class AnalyzeRepositoryProvider
    extends
        $FunctionalProvider<
          AnalyzeRepository,
          AnalyzeRepository,
          AnalyzeRepository
        >
    with $Provider<AnalyzeRepository> {
  /// DI用 (依存性逆転のためドメイン層に定義)
  const AnalyzeRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'analyzeRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$analyzeRepositoryHash();

  @$internal
  @override
  $ProviderElement<AnalyzeRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AnalyzeRepository create(Ref ref) {
    return analyzeRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AnalyzeRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AnalyzeRepository>(value),
    );
  }
}

String _$analyzeRepositoryHash() => r'6fe64afbc764e4ba5ec46d5f2311a12494a7d5e7';
