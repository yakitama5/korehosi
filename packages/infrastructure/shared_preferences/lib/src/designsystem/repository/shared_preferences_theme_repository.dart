import 'package:collection/collection.dart';
import 'package:infrastructure_shared_preferences/common.dart';
import 'package:infrastructure_shared_preferences/src/common/enum/preferences.dart';
import 'package:packages_domain/designsystem.dart';
import 'package:riverpod/riverpod.dart';

class SharedPreferencesThemeRepository implements ThemeRepository {
  const SharedPreferencesThemeRepository(this.ref);

  final Ref ref;

  @override
  ThemeColor? fetchThemeColor() {
    final value = ref.watch(stringPreferenceProvider(Preferences.themeColor));
    return ThemeColor.values.firstWhereOrNull((e) => e.name == value);
  }

  @override
  UIStyle? fetchUIStyle() {
    final value = ref.watch(stringPreferenceProvider(Preferences.uiStyle));
    return UIStyle.values.firstWhereOrNull((e) => e.name == value);
  }

  @override
  AppThemeMode? fetchThemeMode() {
    final value = ref.watch(stringPreferenceProvider(Preferences.themeMode));
    return AppThemeMode.values.firstWhereOrNull((e) => e.name == value);
  }

  @override
  Future<void> updateThemeColor(ThemeColor themeColor) => ref
      .read(stringPreferenceProvider(Preferences.themeColor).notifier)
      .update(themeColor.name);

  @override
  Future<void> updateUIStyle(UIStyle uiStyle) => ref
      .read(stringPreferenceProvider(Preferences.uiStyle).notifier)
      .update(uiStyle.name);

  @override
  Future<void> updateThemeMode(AppThemeMode themeMode) => ref
      .read(stringPreferenceProvider(Preferences.themeMode).notifier)
      .update(themeMode.name);
}
