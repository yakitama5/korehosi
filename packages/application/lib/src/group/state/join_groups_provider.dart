import 'package:packages_domain/group.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../user/state/auth_user_provider.dart';
import 'group_provider.dart';

part 'join_groups_provider.g.dart';

/// 認証ユーザーの参加グループの一覧
@riverpod
Future<List<Group>?> joinGroups(Ref ref) async {
  // 参加グループがなければ、`Null`を返却
  final joinGroupIds = await ref.watch(
    authUserProvider.selectAsync((user) => user?.joinGroupIds),
  );
  if (joinGroupIds == null || joinGroupIds.isEmpty) {
    return null;
  }

  // IDを元にグループを取得
  final asyncGroups = joinGroupIds
      .map((groupId) => ref.watch(groupProvider(groupId: groupId).future))
      .toList();
  return (await Future.wait(asyncGroups)).nonNulls.toList();
}
