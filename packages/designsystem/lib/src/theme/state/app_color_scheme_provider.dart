import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:packages_designsystem/src/extension/theme_color_extension.dart';
import 'package:packages_designsystem/src/theme/utils/core_pallete_extension.dart';
import 'package:packages_designsystem/theme.dart';
import 'package:packages_domain/designsystem.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_color_scheme_provider.g.dart';

/// アプリ内のカラースキーマを管理
@riverpod
ColorScheme appColorScheme(Ref ref, {required Brightness brightness}) {
  final themeColor = ref.watch(themeColorProvider);
  final dynamicCorePalette = ref.watch(corePaletteProvider).value;

  // テーマカラーに応じたカラースキーマを取得
  final colorScheme = _colorScheme(brightness, themeColor, dynamicCorePalette);

  // Dynamic Colorに対応している場合、エラー色を調和する
  final isDynamicColorSupported = dynamicCorePalette != null;
  return isDynamicColorSupported ? colorScheme.harmonized() : colorScheme;
}

/// テーマカラーに応じたカラースキーマ
ColorScheme _colorScheme(
  Brightness brightness,
  ThemeColor themeColor,
  CorePalette? dynamicCorePalette,
) {
  switch (themeColor) {
    case ThemeColor.appColor:
      return _defaultColorScheme(brightness);
    case ThemeColor.dynamicColor:
      // DynamicColorに対応していない場合は、アプリのテーマカラーを設定
      if (dynamicCorePalette == null) {
        return _defaultColorScheme(brightness);
      }

      // デバイスのテーマカラーを基にカラースキーマを生成
      // [暫定対応] Flutter3.22.0で行われた`ColorScheme`の破壊的変更への対応
      return dynamicCorePalette.toM3ColorScheme(brightness: brightness);

    case ThemeColor.blue:
    case ThemeColor.purple:
    case ThemeColor.pink:
    case ThemeColor.red:
    case ThemeColor.orange:
    case ThemeColor.yellow:
    case ThemeColor.green:
      // テーマカラーが選択された場合は、対応する色を基に生成
      return ColorScheme.fromSeed(
        seedColor: themeColor.seedColor!,
        brightness: brightness,
      );
  }
}

ColorScheme _defaultColorScheme(Brightness brightness) {
  return switch (brightness) {
    Brightness.light => MaterialTheme.lightScheme(),
    Brightness.dark => MaterialTheme.darkScheme(),
  };
}
