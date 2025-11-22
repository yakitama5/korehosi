import 'dart:async';

import 'package:flutter/material.dart';
import 'package:packages_designsystem/src/extension/app_theme_mode_extension.dart';
import 'package:packages_domain/designsystem.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode_notifier_provider.g.dart';

/// テーマを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している
@riverpod
class ThemeModeNotifier extends _$ThemeModeNotifier {
  ThemeRepository get _repository => ref.watch(themeRepositoryProvider);

  /// 初期状態はシステム
  @override
  ThemeMode build() =>
      _repository.fetchThemeMode()?.themeMode ?? AppThemeMode.system.themeMode;

  Future<void> update(ThemeMode themeMode) async {
    final appThemeMode = switch (themeMode) {
      ThemeMode.system => AppThemeMode.system,
      ThemeMode.light => AppThemeMode.light,
      ThemeMode.dark => AppThemeMode.dark,
    };

    // 設定反映を待たずに設定する
    unawaited(_repository.updateThemeMode(appThemeMode));
    state = themeMode;
  }
}
