import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../common/state/shared_preferences_provider.dart';

Future<Override> initializeSharedPreferencesProvider() async {
  final preferences = await SharedPreferences.getInstance();

  return sharedPreferencesProvider.overrideWithValue(preferences);
}
