import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../item/state/current_group_items_provider.dart';
import '../../user/state/current_group_join_users_provider.dart';

part 'wanter_name_suggestion.g.dart';

/// 欲しい人のサジェストリスト
/// 対象は「だれがほしい？」に入力したことのある人 + 現在のグループ内のユーザー
@riverpod
Future<List<String>> wanterNameSuggestion(WanterNameSuggestionRef ref) async {
  // `selectAsync`を利用すると、後続のProviderがdisposeされてしまうため、同時に定義
  final wanterNameHsts = ref.watch(
    currentGroupItemsProvider.future.select((data) async {
      final a = await data;
      return a.map((e) => e.wanterName).whereNotNull().toList();
    }),
  );
  final currentGroupUserNames = ref.watch(
    currentGroupJoinUsersProvider.future.select((data) async {
      final a = await data;
      return a.map((e) => e.name).whereNotNull().toList();
    }),
  );

  // ほしい人の履歴を優先して結合
  return {
    ...await wanterNameHsts,
    ...await currentGroupUserNames,
  }.toList();
}
