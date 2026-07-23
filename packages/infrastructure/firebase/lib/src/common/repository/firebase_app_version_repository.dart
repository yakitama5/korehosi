import 'package:infrastructure_firebase/src/common/enum/remote_configs.dart';
import 'package:infrastructure_firebase/src/common/state/remote_config_provider.dart';
import 'package:packages_domain/common.dart';
import 'package:riverpod/riverpod.dart';
import 'package:version/version.dart';

class FirebaseAppVersionRepository extends AppVersionRepository {
  const FirebaseAppVersionRepository(this.ref);

  final Ref ref;

  @override
  Stream<Version> listenForceUpdateAppVersion() =>
      _listenVersion(RemoteConfigs.forceUpdateAppVersion);

  @override
  Stream<Version> listenLatestAppVersion() =>
      _listenVersion(RemoteConfigs.latestAppVersion);

  /// バージョンを取得する
  Stream<Version> _listenVersion(RemoteConfigs<String> config) async* {
    final client = await ref.watch(remoteConfigProvider.future);
    final values = watchRemoteConfigValue(
      client: client,
      key: config.key,
      read: () => client.getString(config.key),
      reportError: ref.read(remoteConfigErrorReporterProvider),
    );
    await for (final value in values) {
      try {
        yield Version.parse(value);
      } on FormatException catch (error, stackTrace) {
        await reportRemoteConfigError(
          ref.read(remoteConfigErrorReporterProvider),
          error,
          stackTrace,
        );
        yield Version.parse(config.defaultValue);
      }
    }
  }
}
