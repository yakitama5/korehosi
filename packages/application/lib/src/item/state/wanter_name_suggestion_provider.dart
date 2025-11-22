import 'package:packages_application/user.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wanter_name_suggestion_provider.g.dart';

/// 欲しい人のサジェストリスト
/// 対象は「だれがほしい？」に入力したことのある人 + 現在のグループ内のユーザー
@riverpod
Future<List<String>> wanterNameSuggestion(Ref ref) async {
  // TODO(yakitama5): 負荷軽減のため一時的にユーザー一覧だけ表示
  final currentGroupUserNames = await ref.watch(
    currentGroupJoinUsersProvider.future.select(
      (users) async =>
          (await users).map((e) => e.name).nonNulls.where((e) => e.isNotEmpty),
    ),
  );

  // ほしい人の履歴を優先して結合
  return currentGroupUserNames.toList();
}
