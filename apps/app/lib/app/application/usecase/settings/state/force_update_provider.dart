import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:version/version.dart';

import '../../../../domain/service/config_service.dart';
import 'app_info_provider.dart';

part 'force_update_provider.g.dart';

/// アプリ更新が必要な最低バージョン
@riverpod
Future<bool> forceUpdate(Ref ref) async {
  // 現在のバージョンと更新通知を表示するバージョンを取得
  final currentVersion = await ref.watch(
    appInfoProvider.selectAsync((data) => Version.parse(data.version)),
  );
  final forceUpdateVersionString =
      await ref.watch(configServiceProvider).fetchForceUpdateVersion();
  final forceUpdateVersion = Version.parse(forceUpdateVersionString);

  // 比較結果を監視
  return currentVersion < forceUpdateVersion;
}
