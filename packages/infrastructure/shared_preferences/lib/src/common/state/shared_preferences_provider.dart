import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences_provider.g.dart';

/// SharedPreference
/// テスト時にDIすることを考慮して、Providerとして定義
@Riverpod(keepAlive: true)
SharedPreferences sharedPreferences(Ref ref) =>
    // アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();
