import 'package:flutter/material.dart';

/// Theme関連のContextExtension
extension BuildContextThemeX on BuildContext {
  ThemeData get themeData => Theme.of(this);
  ColorScheme get colorScheme => themeData.colorScheme;
  TextTheme get textTheme => themeData.textTheme;
}
