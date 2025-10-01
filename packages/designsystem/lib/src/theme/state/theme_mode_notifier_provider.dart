import 'dart:async';

import 'package:flutter/material.dart';
import 'package:packages_designsystem/src/extension/app_theme_mode_extension.dart';
import 'package:packages_domain/designsystem.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode_notifier_provider.g.dart';

// 名称重複を避けるために別名指定で外部に公開する
// ignore: invalid_use_of_internal_member, library_private_types_in_public_api
AutoDisposeNotifierProviderImpl<_ThemeMode, ThemeMode> get themeModeProvider =>
    _themeModeProvider;

/// テーマを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している
@riverpod
class _ThemeMode extends _$ThemeMode {
  ThemeRepository get _repository => ref.watch(themeRepositoryProvider);

  /// 初期状態はダークモード
  @override
  ThemeMode build() =>
      _repository.fetchThemeMode()?.themeMode ?? AppThemeMode.dark.themeMode;

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
