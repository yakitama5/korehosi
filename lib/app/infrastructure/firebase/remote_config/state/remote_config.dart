import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_config.g.dart';

@Riverpod(keepAlive: true)
Future<FirebaseRemoteConfig> remoteConfig(RemoteConfigRef ref) async {
  final res = FirebaseRemoteConfig.instance;

  // キャッシュ化してないと利用できないようにする
  await res.fetchAndActivate();
  return res;
}
