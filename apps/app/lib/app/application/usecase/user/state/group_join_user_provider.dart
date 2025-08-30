import 'package:collection/collection.dart';
import 'package:flutter_app/app/application/usecase/user/state/group_join_users_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/user/entity/user.dart';

part 'group_join_user_provider.g.dart';

/// グループに参加中のユーザー情報
@riverpod
Future<User?> groupJoinUser(
  Ref ref, {
  required String groupId,
  required String userId,
}) => ref.watch(
  groupJoinUsersProvider(groupId: groupId).selectAsync(
    (data) => data.firstWhereOrNull((element) => element.id == userId),
  ),
);
