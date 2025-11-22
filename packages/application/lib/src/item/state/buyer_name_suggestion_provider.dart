import 'package:packages_application/src/user/state/current_group_join_users_provider.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buyer_name_suggestion_provider.g.dart';

/// 購入者のサジェストリスト
/// 対象は購入者に入力したことのある人 + 現在のグループ内のユーザー
@riverpod
Future<List<String>> buyerNameSuggestion(Ref ref) async {
  // TODO(yakitama5): 負荷軽減のため一時的にユーザー一覧だけ表示
  final currentGroupUserNames = await ref.watch(
    currentGroupJoinUsersProvider.future.select(
      (users) async =>
          (await users).map((e) => e.name).nonNulls.where((e) => e.isNotEmpty),
    ),
  );

  // 購入者の履歴を優先して結合
  return currentGroupUserNames.toList();
}
