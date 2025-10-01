import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../user/state/current_group_join_users_provider.dart';
import 'current_group_items_provider.dart';

part 'wanter_name_suggestion_provider.g.dart';

/// 欲しい人のサジェストリスト
/// 対象は「だれがほしい？」に入力したことのある人 + 現在のグループ内のユーザー
@riverpod
Future<List<String>> wanterNameSuggestion(Ref ref) async {
  // `selectAsync`を利用すると、後続のProviderがdisposeされてしまうため、同時に定義
  final wanterNameHsts = ref.watch(
    currentGroupItemsProvider.future.select(
      (items) async => (await items)
          .map((e) => e.wanterName)
          .nonNulls
          .where((e) => e.isNotEmpty),
    ),
  );
  final currentGroupUserNames = ref.watch(
    currentGroupJoinUsersProvider.future.select(
      (users) async =>
          (await users).map((e) => e.name).nonNulls.where((e) => e.isNotEmpty),
    ),
  );

  // ほしい人の履歴を優先して結合
  return {...await wanterNameHsts, ...await currentGroupUserNames}.toList();
}
