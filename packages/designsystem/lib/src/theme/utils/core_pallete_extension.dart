// ignore_for_file: deprecated_member_use, lines_longer_than_80_chars
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/dynamiccolor/dynamic_scheme.dart';
import 'package:material_color_utilities/dynamiccolor/variant.dart';
import 'package:material_color_utilities/palettes/core_palette.dart';

/// [暫定的な対応]
/// `dynamic_color`パッケージで生成された`ColorScheme`を基に
/// Flutter3.22.0で変更されたColorSchemeを生成する
/// https://github.com/material-foundation/flutter-packages/issues/582#issuecomment-2081174158
extension CorePaletteX on CorePalette {
  /// Create a [ColorScheme] from the given `palette` obtained from the Android OS.
  ColorScheme toM3ColorScheme({
    Brightness brightness = Brightness.light,
  }) {
    final scheme = DynamicScheme(
      sourceColorArgb: toColorScheme(brightness: brightness).primary.value,
      // Variantを取得する手段がないため、`fruitSalad`を暫定的に固定設定
      variant: Variant.fruitSalad,
      isDark: brightness == Brightness.dark,
      primaryPalette: primary,
      secondaryPalette: secondary,
      tertiaryPalette: tertiary,
      neutralPalette: neutral,
      neutralVariantPalette: neutralVariant,
    );

    // DynamicScheme → ColorSchemeへの変換
    return ColorScheme(
      brightness: brightness,
      primary: Color(scheme.primary),
      surfaceTint: Color(scheme.surfaceTint),
      onPrimary: Color(scheme.onPrimary),
      primaryContainer: Color(scheme.primaryContainer),
      onPrimaryContainer: Color(scheme.onPrimaryContainer),
      secondary: Color(scheme.secondary),
      onSecondary: Color(scheme.onSecondary),
      secondaryContainer: Color(scheme.secondaryContainer),
      onSecondaryContainer: Color(scheme.onSecondaryContainer),
      tertiary: Color(scheme.tertiary),
      onTertiary: Color(scheme.onTertiary),
      tertiaryContainer: Color(scheme.tertiaryContainer),
      onTertiaryContainer: Color(scheme.onTertiaryContainer),
      error: Color(scheme.error),
      onError: Color(scheme.onError),
      errorContainer: Color(scheme.errorContainer),
      onErrorContainer: Color(scheme.onErrorContainer),
      surface: Color(scheme.surface),
      onSurface: Color(scheme.onSurface),
      onSurfaceVariant: Color(scheme.onSurfaceVariant),
      outline: Color(scheme.outline),
      outlineVariant: Color(scheme.outlineVariant),
      shadow: Color(scheme.shadow),
      scrim: Color(scheme.scrim),
      inverseSurface: Color(scheme.inverseSurface),
      inversePrimary: Color(scheme.inversePrimary),
      primaryFixed: Color(scheme.primaryFixed),
      onPrimaryFixed: Color(scheme.onPrimaryFixed),
      primaryFixedDim: Color(scheme.primaryFixedDim),
      onPrimaryFixedVariant: Color(scheme.onPrimaryFixedVariant),
      secondaryFixed: Color(scheme.secondaryFixed),
      onSecondaryFixed: Color(scheme.onSecondaryFixed),
      secondaryFixedDim: Color(scheme.secondaryFixedDim),
      onSecondaryFixedVariant: Color(scheme.onSecondaryFixedVariant),
      tertiaryFixed: Color(scheme.tertiaryFixed),
      onTertiaryFixed: Color(scheme.onTertiaryFixed),
      tertiaryFixedDim: Color(scheme.tertiaryFixedDim),
      onTertiaryFixedVariant: Color(scheme.onTertiaryFixedVariant),
      surfaceDim: Color(scheme.surfaceDim),
      surfaceBright: Color(scheme.surfaceBright),
      surfaceContainerLowest: Color(scheme.surfaceContainerLowest),
      surfaceContainerLow: Color(scheme.surfaceContainerLow),
      surfaceContainer: Color(scheme.surfaceContainer),
      surfaceContainerHigh: Color(scheme.surfaceContainerHigh),
      surfaceContainerHighest: Color(scheme.surfaceContainerHighest),
    );
  }
}
