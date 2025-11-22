// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'core_palette_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(corePalette)
const corePaletteProvider = CorePaletteProvider._();

final class CorePaletteProvider
    extends
        $FunctionalProvider<
          AsyncValue<CorePalette?>,
          CorePalette?,
          FutureOr<CorePalette?>
        >
    with $FutureModifier<CorePalette?>, $FutureProvider<CorePalette?> {
  const CorePaletteProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'corePaletteProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$corePaletteHash();

  @$internal
  @override
  $FutureProviderElement<CorePalette?> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<CorePalette?> create(Ref ref) {
    return corePalette(ref);
  }
}

String _$corePaletteHash() => r'be47ff890a167762c13f171d1af68f5b23817ef8';
