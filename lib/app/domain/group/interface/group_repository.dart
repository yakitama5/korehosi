import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/group.dart';
import '../entity/share_link.dart';
import '../value_object/join_group_error_code.dart';

part 'group_repository.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
GroupRepository groupRepository(GroupRepositoryRef ref) =>
    // アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// グループモデル および グループの共有に関するリポジトリ
abstract class GroupRepository {
  Stream<Group?> fetch({required String groupId});

  /// グループを追加
  Future<void> add({
    required String name,
    required List<String> joinUids,
    required String ownerUid,
    int? itemCount,
    required bool premium,
  });

  /// グループの更新
  Future<void> update({
    required String groupId,
    required String name,
  });

  /// グループの削除
  Future<void> delete({required String groupId});

  /// グループからの脱退
  Future<void> leave({
    required String groupId,
    required String userId,
  });

  /// グループへの参加
  Future<JoinGroupErrorCode?> joinGroup({required String shareLinkId});

  /// グループの共有リンクを取得
  Stream<ShareLink?> fetchShareLink({required String shareLinkId});

  /// グループの共有リンクを追加
  Future<String> addShareLink({
    required String groupId,
    required int validDays,
  });
}
