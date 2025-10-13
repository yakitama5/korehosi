import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_designsystem/extension.dart';
import 'package:packages_designsystem/theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'app_color_scheme_provider.dart';

part 'app_theme_provider.g.dart';

/// アプリ内のテーマを管理
@riverpod
ThemeData appTheme(Ref ref, {required Brightness brightness}) {
  final colorScheme = ref.watch(appColorSchemeProvider(brightness: brightness));
  final uiStyle = ref.watch(uiStyleProvider);

  final themeData = ThemeData(
    colorScheme: colorScheme,
    brightness: brightness,
    platform: uiStyle.platform,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        // https://github.com/flutter/flutter/issues/132504#issuecomment-2025776552
        TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );

  // GoogleFonts
  return themeData.copyWith(
    textTheme: GoogleFonts.notoSansJpTextTheme(themeData.textTheme),
  );
}
