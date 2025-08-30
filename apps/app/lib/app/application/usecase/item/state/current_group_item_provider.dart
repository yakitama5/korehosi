import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/item/entity/item.dart';
import 'current_group_items_provider.dart';

part 'current_group_item_provider.g.dart';

/// 現在のグループ内の欲しい物
@riverpod
Future<Item?> currentGroupItem(
  Ref ref, {
  required String itemId,
}) {
  return ref.watch(
    currentGroupItemsProvider.selectAsync(
      (items) => items.firstWhereOrNull((item) => item.id == itemId),
    ),
  );
}
