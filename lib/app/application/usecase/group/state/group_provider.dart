import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/group/entity/group.dart';
import '../../../../domain/group/interface/group_repository.dart';

part 'group_provider.g.dart';

/// グループ情報
/// データの参照頻度を減らすため、`keepAlive`を指定
@Riverpod(keepAlive: true)
Stream<Group?> group(GroupRef ref, {required String groupId}) {
  return ref.read(groupRepositoryProvider).fetch(groupId: groupId);
}
