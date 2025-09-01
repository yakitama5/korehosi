import 'package:cores_domain/group.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'group_provider.g.dart';

/// グループ情報
/// データの参照頻度を減らすため、`keepAlive`を指定
@Riverpod(keepAlive: true)
Stream<Group?> group(Ref ref, {required String groupId}) {
  return ref.read(groupRepositoryProvider).fetch(groupId: groupId);
}
