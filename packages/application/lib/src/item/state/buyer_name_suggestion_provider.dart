import 'package:packages_application/src/group/state/current_group_id_provider.dart';
import 'package:packages_application/src/item/state/buyer_name_histories_provider.dart';
import 'package:packages_application/src/user/state/current_group_join_users_provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buyer_name_suggestion_provider.g.dart';

/// 購入者のサジェストリスト
/// 対象は購入者に入力したことのある人 + 現在のグループ内のユーザー
@riverpod
Future<List<String>> buyerNameSuggestion(Ref ref) async {
  final groupId = await ref.watch(currentGroupIdProvider.future);
  if (groupId == null) {
    return List.empty();
  }

  // 購入者の履歴を取得
  final histories = await ref.watch(
    buyerNameHistoriesProvider(groupId: groupId).future,
  );

  // 現在のグループ内のユーザーを取得
  final currentGroupUserNames = await ref.watch(
    currentGroupJoinUsersProvider.future.select(
      (users) async =>
          (await users).map((e) => e.name).nonNulls.where((e) => e.isNotEmpty),
    ),
  );

  // 現在のグループ参加者を優先して結合
  return (currentGroupUserNames.toList() + histories).toSet().toList();
}
