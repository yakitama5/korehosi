import 'package:flutter_app/app/application/usecase/analyze/state/wanter_filter_notifier_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/item/entity/item.dart';
import '../../item/state/current_group_items_provider.dart';

part 'analyze_source_items_provider.dart.g.dart';

/// ふりかえりで利用する欲しい物
@riverpod
Future<List<Item>> analyzeSourceItems(Ref ref) {
  // フィルタの内容で絞り込む
  final wanterName = ref.watch(wanterFilterNotifierProvider);
  return ref.watch(
    currentGroupItemsProvider.selectAsync(
      (allItems) => allItems
          .where((e) => wanterName == null || e.wanterName == wanterName)
          .toList(),
    ),
  );
}
