import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/group/entity/group.dart';
import '../../user/state/auth_user_provider.dart';
import 'group_provider.dart';

part 'join_groups_provider.g.dart';

/// 認証ユーザーの参加グループの一覧
@riverpod
Future<List<Group>?> joinGroups(JoinGroupsRef ref) async {
  // 参加グループがなければ、`Null`を返却
  final joinGroupIds = await ref
      .watch(authUserProvider.selectAsync((user) => user?.joinGroupIds));
  if (joinGroupIds == null || joinGroupIds.isEmpty) {
    return null;
  }

  // IDを元にグループを取得
  final asyncGroups = joinGroupIds
      .map((groupId) async => ref.watch(groupProvider(groupId: groupId).future))
      .toList();
  return (await Future.wait(asyncGroups)).whereNotNull().toList();
}
