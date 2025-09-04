import 'package:cores_domain/core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../group_usecase.dart';

part 'current_group_id_provider.g.dart';

/// 現在のグループID
// @Riverpod(keepAlive: true)
// Future<String?> currentGroupId(CurrentGroupIdRef ref) =>
//     ref.read(groupUsecaseProvider).fetchCurrentGroupId();

/// 現在のグループID
@Riverpod(keepAlive: true)
class CurrentGroupId extends _$CurrentGroupId {
  @override
  FutureOr<String?> build() async {
    return ref.read(groupUsecaseProvider).fetchCurrentGroupId();
  }

  Future<void> set({required String groupId}) async {
    await ref.read(cachedServiceProvider).setCurrentGroupId(groupId: groupId);
    ref.invalidateSelf();

    // await ref.read(groupUsecaseProvider).setCurrentGroupId(groupId: groupId);
    // state = await AsyncValue.guard(
    //   () => ref.read(groupUsecaseProvider).fetchCurrentGroupId(),
    // );
  }

  Future<void> remove() async {
    await ref.read(cachedServiceProvider).removeCurrentGroupId();
    ref.invalidateSelf();
    // state = const AsyncValue.data(null);
  }
}
