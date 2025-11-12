import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/src/user/state/group_join_users_provider.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'group_join_user_provider.g.dart';

/// グループに参加中のユーザー情報
@riverpod
Future<User?> groupJoinUser(
  Ref ref, {
  required GroupId groupId,
  required UserId userId,
}) => ref.watch(
  groupJoinUsersProvider(groupId: groupId).selectAsync(
    (data) => data.firstWhereOrNull((element) => element.id == userId),
  ),
);
