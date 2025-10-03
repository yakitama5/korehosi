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
    // HACK(yakitama5): RemoteConfigの値をStreamで取得する箇所でエラーが頻発する、原因調査
    final value = await ref.watch(
      stringStreamConfigProvider(config: config).future,
    );
    yield Version.parse(value);
  }
}
