import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../domain/service/cached_service.dart';
import '../state/shared_preference.dart';

/// 現在のグループIDの保存Key
const _currentGroupKey = 'current_group_id';

/// FCMトークンの更新タイムスタンプKey
const _tokenTimestampKey = 'fcm_token_timestamp';

/// FCMトークンタイムスタンプの日付形式
const _tokenTimestampFormat = 'yyyy-MM-dd';

/// `shared_preference`パッケージを利用したサービスの実装
class SharedPreferenceCachedService implements CachedService {
  const SharedPreferenceCachedService(this.ref);

  final Ref ref;

  @override
  Future<String?> fetchCurrentGroupId() async {
    final shared = await ref.read(sharedPreferencesProvider.future);
    return shared.getString(_currentGroupKey);
  }

  @override
  Future<bool> setCurrentGroupId({
    required String groupId,
  }) async {
    final shared = await ref.read(sharedPreferencesProvider.future);
    return shared.setString(_currentGroupKey, groupId);
  }

  @override
  Future<bool> removeCurrentGroupId() async {
    final shared = await ref.read(sharedPreferencesProvider.future);
    return shared.remove(_currentGroupKey);
  }

  @override
  Future<DateTime?> fetchTokenTimestamp({
    required String uid,
    required String token,
  }) async {
    final shared = await ref.read(sharedPreferencesProvider.future);
    final str = shared.getString('${_tokenTimestampKey}_${uid}_$token');
    final formatter = DateFormat(_tokenTimestampFormat);
    return str == null ? null : formatter.parse(str);
  }

  @override
  Future<bool> updateTokenTimestamp({
    required String uid,
    required String token,
  }) async {
    final shared = await ref.read(sharedPreferencesProvider.future);
    final formatter = DateFormat(_tokenTimestampFormat);
    return shared.setString(
      '${_tokenTimestampKey}_${uid}_$token',
      formatter.format(DateTime.now()),
    );
  }

  @override
  Future<bool> removeTokenTimestamp({
    required String uid,
    required String token,
  }) async {
    final shared = await ref.read(sharedPreferencesProvider.future);
    return shared.remove('${_tokenTimestampKey}_${uid}_$token');
  }
}
