import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/group.dart';
import '../entity/share_link.dart';
import '../value_object/join_group_error_code.dart';

part 'group_repository.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
GroupRepository groupRepository(Ref ref) =>
    // アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// グループモデル および グループの共有に関するリポジトリ
abstract class GroupRepository {
  Stream<Group?> fetch({required GroupId groupId});

  /// グループを追加
  Future<void> add({
    required String name,
    required List<UserId> joinUids,
    required UserId ownerUid,
    int? itemCount,
    required bool premium,
  });

  /// グループの更新
  Future<void> update({required GroupId groupId, required String name});

  /// グループの削除
  Future<void> delete({required GroupId groupId});

  /// グループからの脱退
  Future<void> leave({required GroupId groupId, required UserId userId});

  /// グループへの参加
  Future<JoinGroupErrorCode?> joinGroup({required ShareLinkId shareLinkId});

  /// グループの共有リンクを取得
  Stream<ShareLink?> fetchShareLink({required ShareLinkId shareLinkId});

  /// グループの共有リンクを追加
  Future<String> addShareLink({
    required GroupId groupId,
    required int validDays,
  });
}
