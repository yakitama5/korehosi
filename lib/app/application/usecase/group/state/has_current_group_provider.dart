import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'current_group_provider.dart';

part 'has_current_group_provider.g.dart';

/// 現在のグループが選択されているか否か
@riverpod
Future<bool> hasCurrentGroup(HasCurrentGroupRef ref) =>
    ref.watch(currentGroupProvider.selectAsync((data) => data != null));
