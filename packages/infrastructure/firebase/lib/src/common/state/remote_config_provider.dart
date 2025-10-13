import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:infrastructure_firebase/src/common/enum/remote_configs.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_config_provider.g.dart';

/// Firebase Remote Config
/// テスト時にDIすることを考慮して、Providerとして定義
@Riverpod(keepAlive: true)
Future<FirebaseRemoteConfig> remoteConfig(Ref ref) async {
  final res = FirebaseRemoteConfig.instance;

  // キャッシュ化してないと利用できないようにする
  await res.fetchAndActivate();
  return res;
}

@riverpod
Future<String> stringConfig(
  Ref ref, {
  required RemoteConfigs<String> config,
}) async {
  final remoteConfig = await ref.watch(remoteConfigProvider.future);
  return remoteConfig.getString(config.key);
}

@riverpod
Future<bool> boolConfig(Ref ref, {required RemoteConfigs<bool> config}) async {
  final remoteConfig = await ref.watch(remoteConfigProvider.future);
  return remoteConfig.getBool(config.key);
}

@riverpod
Stream<String> stringStreamConfig(
  Ref ref, {
  required RemoteConfigs<String> config,
}) async* {
  final remoteConfig = await ref.watch(remoteConfigProvider.future);

  // 初回は単純に取得
  final key = config.key;
  yield remoteConfig.getString(key);

  // キーが更新された際に最新の値を取得する
  yield* remoteConfig.onConfigUpdated
      .where((snapshot) => snapshot.updatedKeys.contains(key))
      .asyncMap((snapshot) async {
        await remoteConfig.activate();
        return remoteConfig.getString(key);
      });
}

@riverpod
Stream<bool> boolStreamConfig(
  Ref ref, {
  required RemoteConfigs<bool> config,
}) async* {
  final remoteConfig = await ref.watch(remoteConfigProvider.future);

  // 初回は単純に取得
  final key = config.key;
  yield remoteConfig.getBool(key);

  // キーが更新された際に最新の値を取得する
  yield* remoteConfig.onConfigUpdated
      .where((snapshot) => snapshot.updatedKeys.contains(key))
      .asyncMap((snapshot) async {
        await remoteConfig.activate();
        return remoteConfig.getBool(key);
      });
}
