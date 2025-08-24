import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_config.g.dart';

/// Firebase Remote Config
/// テスト時にDIすることを考慮して、Providerとして定義
@Riverpod(keepAlive: true)
Future<FirebaseRemoteConfig> remoteConfig(Ref ref) async {
  final res = FirebaseRemoteConfig.instance;

  // キャッシュ化してないと利用できないようにする
  await res.fetchAndActivate();
  return res;
}
