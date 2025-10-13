import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../enum/preferences.dart';
import 'shared_preferences_provider.dart';

part 'preferences_notifier_provider.g.dart';

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<String>`のenum値を設定して利用する.
///
@riverpod
class StringPreference extends _$StringPreference {
  @override
  String build(Preferences<String> pref) =>
      ref.read(sharedPreferencesProvider).getString(pref.key) ??
      pref.defaultValue;

  /// ローカルストレージ値の更新
  Future<void> update(String value) async {
    await ref.read(sharedPreferencesProvider).setString(pref.key, value);
    ref.invalidateSelf();
  }

  /// ローカルストレージ値のクリア
  Future<void> remove() async {
    await ref.read(sharedPreferencesProvider).remove(pref.key);
    ref.invalidateSelf();
  }
}

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<String>`のenum値を設定して利用する.
///
@riverpod
class StringWithStringFamilyPreference
    extends _$StringWithStringFamilyPreference {
  @override
  String build(Preferences<String> pref, String family) =>
      ref.read(sharedPreferencesProvider).getString('${pref.key}_$family') ??
      pref.defaultValue;

  /// ローカルストレージ値の更新
  Future<void> update(String value) async {
    await ref
        .read(sharedPreferencesProvider)
        .setString('${pref.key}_$family', value);
    ref.invalidateSelf();
  }

  /// ローカルストレージ値のクリア
  Future<void> remove() async {
    await ref.read(sharedPreferencesProvider).remove('${pref.key}_$family');
    ref.invalidateSelf();
  }
}

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<bool>`のenum値を設定して利用する.
///
@riverpod
class BoolPreference extends _$BoolPreference {
  @override
  bool build(Preferences<bool> pref) =>
      ref.read(sharedPreferencesProvider).getBool(pref.key) ??
      pref.defaultValue;

  /// ローカルストレージ値の更新
  // ignore: avoid_positional_boolean_parameters
  Future<void> update(bool value) async {
    await ref.read(sharedPreferencesProvider).setBool(pref.key, value);
    ref.invalidateSelf();
  }
}

///
/// shared_preferencesへの値の出し入れを管理するためのプロバイダー.
/// `Preference<int>`のenum値を設定して利用する.
///
@riverpod
class IntPreference extends _$IntPreference {
  @override
  int build(Preferences<int> pref) =>
      ref.read(sharedPreferencesProvider).getInt(pref.key) ?? pref.defaultValue;

  /// ローカルストレージ値の更新
  Future<void> update(int value) async {
    await ref.read(sharedPreferencesProvider).setInt(pref.key, value);
    ref.invalidateSelf();
  }
}
