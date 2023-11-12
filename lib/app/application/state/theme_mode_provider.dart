import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode_provider.g.dart';

/// テーマ
@riverpod
ThemeMode themeMode(ThemeModeRef ref) => throw UnimplementedError();

/// テーマのNotifier
@riverpod
class ThemeModeNotifier extends _$ThemeModeNotifier {
  @override
  ThemeMode build() {
    return ThemeMode.system;
  }

  // ignore: use_setters_to_change_properties
  void change(ThemeMode themeMode) {
    state = themeMode;
  }
}
