import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../group/state/current_group_provider.dart';
import 'group_join_users_provider.dart';

part 'current_group_join_users_provider.g.dart';

/// 現在のグループに所属しているユーザー一覧
@riverpod
Future<List<User>> currentGroupJoinUsers(Ref ref) async {
  // 選択中のグループに所属しているユーザーIDを取得
  final groupId = await ref.watch(
    currentGroupProvider.selectAsync((group) => group?.id),
  );
  if (groupId == null) {
    return [];
  }

  return ref.watch(groupJoinUsersProvider(groupId: groupId).future);
}
