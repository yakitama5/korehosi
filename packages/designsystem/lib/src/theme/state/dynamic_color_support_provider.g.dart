// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'dynamic_color_support_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dynamicColorSupportProvider)
const dynamicColorSupportProviderProvider =
    DynamicColorSupportProviderProvider._();

final class DynamicColorSupportProviderProvider
    extends
        $FunctionalProvider<
          DynamicColorSupportStatus,
          DynamicColorSupportStatus,
          DynamicColorSupportStatus
        >
    with $Provider<DynamicColorSupportStatus> {
  const DynamicColorSupportProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dynamicColorSupportProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dynamicColorSupportProviderHash();

  @$internal
  @override
  $ProviderElement<DynamicColorSupportStatus> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  DynamicColorSupportStatus create(Ref ref) {
    return dynamicColorSupportProvider(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DynamicColorSupportStatus value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DynamicColorSupportStatus>(value),
    );
  }
}

String _$dynamicColorSupportProviderHash() =>
    r'8817e711690308dbee0954357d888c4272c0686a';
