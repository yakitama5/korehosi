import 'package:packages_application/src/user/usecase/user_usecase.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'group_join_users_provider.g.dart';

/// グループに参加中のユーザー情報
/// データの参照頻度を減らすため、`keepAlive`を指定
@Riverpod(keepAlive: true)
Stream<List<User>> groupJoinUsers(Ref ref, {required GroupId groupId}) =>
    ref.read(userUsecaseProvider).fetchByGroup(groupId: groupId);
