import 'dart:async';

import 'package:packages_domain/designsystem.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ui_style_notifier_provider.g.dart';

/// UIスタイルを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している
@riverpod
class UiStyleNotifier extends _$UiStyleNotifier {
  ThemeRepository get _repository => ref.watch(themeRepositoryProvider);

  @override
  UIStyle build() {
    final uiStyle = _repository.fetchUIStyle();

    // 初期値は「システム設定」
    return uiStyle ?? UIStyle.system;
  }

  Future<void> update(UIStyle uiStyle) async {
    // 設定反映を待たずに設定する
    unawaited(_repository.updateUIStyle(uiStyle));
    state = uiStyle;
  }
}
