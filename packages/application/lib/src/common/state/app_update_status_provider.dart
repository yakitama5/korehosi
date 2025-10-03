import 'package:packages_application/src/common/state/app_build_config_provider.dart';
import 'package:packages_application/src/common/state/app_latest_version_provider.dart';
import 'package:packages_application/src/common/state/force_update_version_provider.dart';
import 'package:packages_core/util.dart';
import 'package:packages_domain/common.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_update_status_provider.g.dart';

@riverpod
Future<AppUpdateStatus> appUpdateStatus(Ref ref) async {
  // バージョン情報を取得
  final forceUpdateAppVersion = await ref.watch(
    forceUpdateVersionProvider.future,
  );
  final latestAppVersion = await ref.watch(appLatestVersionProvider.future);

  // 現在のアプリ情報を取得
  final appVersion = ref.watch(appBuildConfigProvider.select((e) => e.version));

  logger
    ..d('Force Update Version: $forceUpdateAppVersion')
    ..d('Latest App Version: $latestAppVersion')
    ..d('App Version: $appVersion');

  // 比較してステータスを返却
  if (appVersion < forceUpdateAppVersion) {
    logger.d('Update Required');
    return AppUpdateStatus.updateRequired;
  } else if (appVersion < latestAppVersion) {
    logger.d('Update Possible');
    return AppUpdateStatus.updatePossible;
  }

  logger.d('Using Latest');
  return AppUpdateStatus.usingLatest;
}
