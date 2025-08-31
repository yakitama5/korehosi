import 'package:cores_domain/src/designsystem/value_object/app_theme_mode.dart';
import 'package:cores_domain/src/designsystem/value_object/theme_color.dart';
import 'package:cores_domain/src/designsystem/value_object/ui_style.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_repository.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
ThemeRepository themeRepository(Ref ref) => throw UnimplementedError();

abstract class ThemeRepository {
  UIStyle? fetchUIStyle();
  Future<void> updateUIStyle(UIStyle uiStyle);

  ThemeColor? fetchThemeColor();
  Future<void> updateThemeColor(ThemeColor themeColor);

  AppThemeMode? fetchThemeMode();
  Future<void> updateThemeMode(AppThemeMode themeMode);
}
