// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'initial_location_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// 初期ロケーション
/// アプリ起動時 または テスト時にoverrideして利用する前提

@ProviderFor(initialLocation)
const initialLocationProvider = InitialLocationProvider._();

/// 初期ロケーション
/// アプリ起動時 または テスト時にoverrideして利用する前提

final class InitialLocationProvider
    extends $FunctionalProvider<String?, String?, String?>
    with $Provider<String?> {
  /// 初期ロケーション
  /// アプリ起動時 または テスト時にoverrideして利用する前提
  const InitialLocationProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'initialLocationProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$initialLocationHash();

  @$internal
  @override
  $ProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String? create(Ref ref) {
    return initialLocation(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$initialLocationHash() => r'ca0023b63cb88d0b40ed39b412fa2d0272e751bb';
