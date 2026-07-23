import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:infrastructure_firebase/src/common/enum/remote_configs.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_config_provider.g.dart';

typedef RemoteConfigErrorReporter =
    Future<void> Function(
      Object error,
      StackTrace stackTrace,
    );

final remoteConfigErrorReporterProvider = Provider<RemoteConfigErrorReporter>(
  (ref) => (error, stackTrace) async {
    try {
      await FirebaseCrashlytics.instance.recordError(
        error,
        stackTrace,
        reason: 'Firebase Remote Config',
      );
    } on Object {
      // Reporting is best-effort and must not break Remote Config fallback.
    }
  },
);

Future<void> reportRemoteConfigError(
  RemoteConfigErrorReporter reportError,
  Object error,
  StackTrace stackTrace,
) async {
  try {
    await reportError(error, stackTrace);
  } on Object {
    // A custom reporter must also remain best-effort.
  }
}

/// Firebase Remote Configをテスト可能にするための最小インターフェース。
abstract interface class RemoteConfigClient {
  String getString(String key);

  bool getBool(String key);

  Stream<Set<String>> get updatedKeys;

  Future<bool> activate();
}

class FirebaseRemoteConfigClient implements RemoteConfigClient {
  const FirebaseRemoteConfigClient(this.remoteConfig);

  final FirebaseRemoteConfig remoteConfig;

  @override
  Future<bool> activate() => remoteConfig.activate();

  @override
  bool getBool(String key) => remoteConfig.getBool(key);

  @override
  String getString(String key) => remoteConfig.getString(key);

  @override
  Stream<Set<String>> get updatedKeys =>
      remoteConfig.onConfigUpdated.map((event) => event.updatedKeys);
}

/// Firebase Remote Config。
///
/// fetchに失敗しても、SDKが保持するactivated/cached/default値を利用できるよう
/// 初期化自体は成功させる。
@Riverpod(keepAlive: true)
Future<RemoteConfigClient> remoteConfig(Ref ref) async {
  final remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setDefaults({
    for (final config in RemoteConfigs.values) config.key: config.defaultValue,
  });
  await remoteConfig.setConfigSettings(
    RemoteConfigSettings(
      fetchTimeout: const Duration(seconds: 10),
      minimumFetchInterval: const String.fromEnvironment('flavor') == 'dev'
          ? Duration.zero
          : const Duration(hours: 12),
    ),
  );

  try {
    await remoteConfig.fetchAndActivate();
  } on Object catch (error, stackTrace) {
    await reportRemoteConfigError(
      ref.read(remoteConfigErrorReporterProvider),
      error,
      stackTrace,
    );
  }

  return FirebaseRemoteConfigClient(remoteConfig);
}

@riverpod
Future<String> stringConfig(
  Ref ref, {
  required RemoteConfigs<String> config,
}) async {
  final client = await ref.watch(remoteConfigProvider.future);
  return client.getString(config.key);
}

@riverpod
Future<bool> boolConfig(Ref ref, {required RemoteConfigs<bool> config}) async {
  final client = await ref.watch(remoteConfigProvider.future);
  return client.getBool(config.key);
}

@riverpod
Stream<String> stringStreamConfig(
  Ref ref, {
  required RemoteConfigs<String> config,
}) async* {
  final client = await ref.watch(remoteConfigProvider.future);
  yield* watchRemoteConfigValue(
    client: client,
    key: config.key,
    read: () => client.getString(config.key),
    reportError: ref.read(remoteConfigErrorReporterProvider),
  );
}

@riverpod
Stream<bool> boolStreamConfig(
  Ref ref, {
  required RemoteConfigs<bool> config,
}) async* {
  final client = await ref.watch(remoteConfigProvider.future);
  yield* watchRemoteConfigValue(
    client: client,
    key: config.key,
    read: () => client.getBool(config.key),
    reportError: ref.read(remoteConfigErrorReporterProvider),
  );
}

/// 値の初回通知とリアルタイム更新を、安全に1本のStreamとして公開する。
///
/// Remote Configの更新通知またはactivateが失敗してもStreamを終了しない。
/// 購読解除時はFirebase側の購読も解除する。
Stream<T> watchRemoteConfigValue<T>({
  required RemoteConfigClient client,
  required String key,
  required T Function() read,
  required RemoteConfigErrorReporter reportError,
}) {
  StreamSubscription<Set<String>>? subscription;
  late final StreamController<T> controller;

  controller = StreamController<T>(
    onListen: () {
      controller.add(read());
      subscription = client.updatedKeys.listen(
        (keys) async {
          if (!keys.contains(key)) {
            return;
          }

          subscription?.pause();
          try {
            await client.activate();
            if (!controller.isClosed) {
              controller.add(read());
            }
          } on Object catch (error, stackTrace) {
            await reportRemoteConfigError(reportError, error, stackTrace);
          } finally {
            subscription?.resume();
          }
        },
        onError: (Object error, StackTrace stackTrace) async {
          await reportRemoteConfigError(reportError, error, stackTrace);
        },
        onDone: controller.close,
      );
    },
    onPause: () => subscription?.pause(),
    onResume: () => subscription?.resume(),
    onCancel: () => subscription?.cancel(),
  );

  return controller.stream;
}
