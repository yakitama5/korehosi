import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/group/entity/group.dart';
import '../../../../domain/group/interface/group_repository.dart';

part 'group_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<Group?> group(GroupRef ref, {required String groupId}) {
  return ref.read(groupRepositoryProvider).fetch(groupId: groupId);
}
