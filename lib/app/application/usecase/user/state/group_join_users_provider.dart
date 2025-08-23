import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/user/entity/user.dart';
import '../user_usecase.dart';

part 'group_join_users_provider.g.dart';

/// グループに参加中のユーザー情報
/// データの参照頻度を減らすため、`keepAlive`を指定
@Riverpod(keepAlive: true)
Stream<List<User>> groupJoinUsers(
  Ref ref, {
  required String groupId,
}) =>
    ref.read(userUsecaseProvider).fetchByGroup(groupId: groupId);
