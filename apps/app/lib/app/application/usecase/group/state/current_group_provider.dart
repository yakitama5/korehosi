import 'package:cores_domain/user.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'current_group_id_provider.dart';
import 'group_provider.dart';

part 'current_group_provider.g.dart';

/// 現在のグループ情報
@Riverpod(keepAlive: true)
Future<Group?> currentGroup(Ref ref) async {
  // 選択されていなければ、`Null`を返却
  final groupId = await ref.watch(currentGroupIdProvider.future);
  if (groupId == null) {
    return null;
  }

  return ref.watch(groupProvider(groupId: groupId).future);
}
