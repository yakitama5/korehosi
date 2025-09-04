import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_domain/core.dart';

import '../remote_config/state/remote_config.dart';

/// 欲しい物の登録数上限
const _maxGroupCountKey = 'max_group_count_by_free_plan';
const String _maxItemCountKey = 'max_item_count_by_free_plan';
const String _forceUpdateVersionKey = 'force_update_app_version';

/// Firebaseを利用したサービスの実装
class FirebaseConfigService implements ConfigService {
  const FirebaseConfigService(this.ref);

  final Ref ref;

  @override
  Future<String> fetchForceUpdateVersion() =>
      _fetchString(_forceUpdateVersionKey);

  @override
  Future<int> fetchMaxGroupCount() => _fetchInt(_maxGroupCountKey);

  @override
  Future<int> fetchMaxItemCount() => _fetchInt(_maxItemCountKey);

  /// 数値型を取得する
  Future<int> _fetchInt(String key) async {
    final remoteConfig = await ref.watch(remoteConfigProvider.future);
    return remoteConfig.getInt(key);
  }

  /// 文字列型を取得する
  Future<String> _fetchString(String key) async {
    final remoteConfig = await ref.watch(remoteConfigProvider.future);
    return remoteConfig.getString(key);
  }
}
