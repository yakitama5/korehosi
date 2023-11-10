import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/group/entity/group.dart';
import 'current_group_id_provider.dart';
import 'group_provider.dart';

part 'current_group_provider.g.dart';

@riverpod
Future<Group?> currentGroup(CurrentGroupRef ref) async {
  // 選択されていなければ、`Null`を返却
  final groupId = await ref.watch(currentGroupIdProvider.future);
  if (groupId == null) {
    return null;
  }

  return ref.watch(groupProvider(groupId: groupId).future);
}
