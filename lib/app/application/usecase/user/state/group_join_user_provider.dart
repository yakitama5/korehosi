import 'package:collection/collection.dart';
import 'package:family_wish_list/app/application/usecase/user/state/group_join_users_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/user/entity/user.dart';

part 'group_join_user_provider.g.dart';

/// グループに参加中のユーザー情報
@riverpod
Future<User?> groupJoinUser(
  GroupJoinUserRef ref, {
  required String groupId,
  required String userId,
}) =>
    ref.watch(
      groupJoinUsersProvider(groupId: groupId).selectAsync(
        (data) => data.firstWhereOrNull((element) => element.id == userId),
      ),
    );
