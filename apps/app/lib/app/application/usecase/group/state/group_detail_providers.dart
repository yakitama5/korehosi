import 'package:cores_domain/group.dart';
import 'package:cores_domain/user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../user/state/group_join_users_provider.dart';
import 'group_provider.dart';

part 'group_detail_providers.g.dart';

// ignore: avoid_classes_with_only_static_members
/// グループの明細を管理するProvider
/// 明細を表示する画面郡で横断して利用する状態を管理する
/// IDを管理するProviderを `override`することを前提に処理を組む
class GroupDetailProviders {
  static AutoDisposeProvider<String?> get groupIdProvider => _groupIdProvider;
  static AutoDisposeFutureProvider<Group?> get groupProvider => _groupProvider;
  static AutoDisposeFutureProvider<List<User>> get usersProvider =>
      _usersProvider;
}

/// 明細表示対象となるグループのIDを管理するProvider
/// `override`前提の利用を強制する
@riverpod
String? _groupId(Ref ref) => throw UnimplementedError();

/// 明細表示対象となるグループのEntityを管理するProvider
/// `_groupIdProvider`に依存する
@Riverpod(dependencies: [_groupId])
Future<Group?> _group(Ref ref) async {
  final groupId = ref.watch(_groupIdProvider);
  if (groupId == null) {
    return null;
  }
  return ref.watch(groupProvider(groupId: groupId).future);
}

/// グループに参加中のユーザーを管理するProvider
/// `_groupIdProvider`に依存する
@Riverpod(dependencies: [_groupId])
Future<List<User>> _users(Ref ref) async {
  final groupId = ref.watch(_groupIdProvider);
  if (groupId == null) {
    return [];
  }
  return ref.watch(groupJoinUsersProvider(groupId: groupId).future);
}
