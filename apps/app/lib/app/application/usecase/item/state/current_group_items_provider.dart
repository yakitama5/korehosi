import 'package:cores_domain/item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../group/state/current_group_provider.dart';
import 'items_provider.dart';

part 'current_group_items_provider.g.dart';

/// 現在のグループ内の欲しい物一覧
@riverpod
Future<List<Item>> currentGroupItems(Ref ref) async {
  // キャッシュだけが古い状態を考慮して、データはエンティティから取得する
  final currentGroupId = await ref.watch(
    currentGroupProvider.selectAsync((data) => data?.id),
  );
  if (currentGroupId == null) {
    return [];
  }

  return ref.watch(itemsProvider(groupId: currentGroupId).future);
}
