import 'package:collection/collection.dart';
import 'package:family_wish_list/app/application/usecase/user/state/group_join_users_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/group/entity/group_tile.dart';
import '../../../../domain/user/entity/user.dart';
import '../../../state/locale_provider.dart';
import '../../user/state/auth_user_provider.dart';
import 'current_group_provider.dart';
import 'group_provider.dart';

part 'view_groups_provider.g.dart';

/// グループ一覧に表示用のグループ
@riverpod
Future<List<GroupTile>> viewGroups(ViewGroupsRef ref) async {
  final l10n = ref.watch(l10nProvider);
  final uid = await ref.watch(authUserProvider.selectAsync((user) => user?.id));
  final joinGroupIds = await ref
      .watch(authUserProvider.selectAsync((user) => user?.joinGroupIds));
  final currentGroupId =
      await ref.watch(currentGroupProvider.selectAsync((data) => data?.id));
  final asyncJoinGroups = joinGroupIds!.map((id) async {
    // グループの取得
    final group = await ref.watch(groupProvider(groupId: id).future);
    if (group == null) {
      return null;
    }

    // オーナー情報の取得
    // グループ内のユーザー情報のため、参加者一覧から取得する
    final owner = await ref.watch(
      groupJoinUsersProvider(groupId: group.id).selectAsync(
        (users) => users.firstWhereOrNull((user) => user.id == group.ownerUid),
      ),
    );

    return GroupTile(
      group: group,
      ownerName: owner.dispName(l10n),
      current: group.id == currentGroupId,
      isOwner: group.ownerUid == uid,
    );
  }).toList();
  return (await Future.wait<GroupTile?>(asyncJoinGroups))
      .whereNotNull()
      .toList();
}
