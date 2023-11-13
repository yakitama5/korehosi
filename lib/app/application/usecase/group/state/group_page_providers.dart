import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/group/entity/group.dart';
import '../../../../domain/user/entity/user.dart';
import '../../user/state/group_join_users_provider.dart';
import 'group_provider.dart';

part 'group_page_providers.g.dart';

/// グループ画面のグループID
/// 新規 or 更新の判定に利用するため、IDだけを切り出し
@riverpod
String? _groupId(_GroupIdRef ref) =>
// 画面遷移時に `override` することを前提に利用
    throw UnimplementedError();

/// グループ画面に表示するグループ
@Riverpod(dependencies: [_groupId])
Future<Group?> _group(_GroupRef ref) async {
  final groupId = ref.watch(_groupIdProvider);
  if (groupId == null) {
    return null;
  }
  return ref.watch(groupProvider(groupId: groupId).future);
}

/// グループに参加中のユーザー
@Riverpod(dependencies: [_groupId])
Future<List<User>> _users(_UsersRef ref) async {
  final groupId = ref.watch(_groupIdProvider);
  if (groupId == null) {
    return [];
  }
  return ref.watch(groupJoinUsersProvider(groupId: groupId).future);
}

// ignore: avoid_classes_with_only_static_members
/// グループの詳細ページ内限定で利用するProviderの一覧
class GroupPageProviders {
  /// Copied from [_groupId].
  static final groupIdProvider = _groupIdProvider;

  /// Copied from [_group].
  static final groupProvider = _groupProvider;

  /// Copied from [_users].
  static final usersProvider = _usersProvider;
}
