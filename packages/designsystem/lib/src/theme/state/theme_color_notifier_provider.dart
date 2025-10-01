import 'dart:async';

import 'package:packages_domain/designsystem.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_color_notifier_provider.g.dart';

/// テーマカラーを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している
@riverpod
class ThemeColorNotifier extends _$ThemeColorNotifier {
  ThemeRepository get _repository => ref.watch(themeRepositoryProvider);

  @override
  ThemeColor build() {
    final themeColor = _repository.fetchThemeColor();
    const defaultValue = ThemeColor.monochrome;

    return themeColor ?? defaultValue;
  }

  Future<void> update(ThemeColor themeColor) async {
    // 設定反映を待たずに設定する
    unawaited(_repository.updateThemeColor(themeColor));
    state = themeColor;
  }
}
