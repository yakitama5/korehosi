import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color_schemes.g.dart';

ThemeData createThemeData(
  TargetPlatform platform,
  Brightness brightness,
  ColorScheme? dynamicColorScheme,
) {
  // 未対応のプラットフォームでは、DynamicColorを利用しない
  late final ColorScheme? dynamicColor;
  if (kIsWeb) {
    dynamicColor = null;
  } else {
    dynamicColor = switch (platform) {
      TargetPlatform.android || TargetPlatform.fuchsia => dynamicColorScheme,
      _ => null,
    };
  }

  // TODO(yakitama5): 色を指定することでユーザーがテーマを変更できるようにしたい
  final defaultColor = brightness == Brightness.light
      ? lightColorScheme
      : darkColorScheme;

  return ThemeData(
    useMaterial3: true,
    brightness: brightness,
    colorScheme: dynamicColor ?? defaultColor,
    // マージする方式でないと、ダークテーマへの変更が検知されない
    textTheme: GoogleFonts.murechoTextTheme(const TextTheme()),
  );
}
