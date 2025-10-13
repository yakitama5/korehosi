import 'package:packages_application/src/group/usecase/group_usecase.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
    await ref
        .read(userSessionRepositoryProvider)
        .setCurrentGroupId(groupId: groupId);
    ref.invalidateSelf();
  }

  Future<void> remove() async {
    await ref.read(userSessionRepositoryProvider).removeCurrentGroupId();
    ref.invalidateSelf();
    // state = const AsyncValue.data(null);
  }
}
