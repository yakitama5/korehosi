import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/service/cached_service.dart';
import '../state/shared_preference.dart';

/// 現在のグループIDの保存Key
const _currentGroupKey = 'current_group_id';

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
}
