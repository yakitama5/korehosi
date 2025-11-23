import 'package:packages_application/src/group/state/current_group_id_provider.dart';
import 'package:packages_application/src/item/state/wanter_name_histories_provider.dart';
import 'package:packages_application/user.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wanter_name_suggestion_provider.g.dart';

/// 欲しい人のサジェストリスト
/// 対象は「だれがほしい？」に入力したことのある人 + 現在のグループ内のユーザー
@riverpod
Future<List<String>> wanterNameSuggestion(Ref ref) async {
  final groupId = await ref.watch(currentGroupIdProvider.future);
  if (groupId == null) {
    return List.empty();
  }

  // 履歴を取得
  final histories = await ref.watch(
    wanterNameHistoriesProvider(groupId: groupId).future,
  );

  // 現在のグループ内のユーザーを取得
  final currentGroupUserNames = await ref.watch(
    currentGroupJoinUsersProvider.future.select(
      (users) async =>
          (await users).map((e) => e.name).nonNulls.where((e) => e.isNotEmpty),
    ),
  );

  // 現在のグループ内のユーザーを優先して表示
  // 重複を削除するために`Set`を経由
  return (currentGroupUserNames.toList() + histories).toSet().toList();
}
