import 'package:packages_application/src/group/state/current_group_id_provider.dart';
import 'package:packages_application/src/item/state/items_search_query_notifier_provider.dart';
import 'package:packages_application/src/item/usecase/item_usecase.dart';
import 'package:packages_application/user.dart';
import 'package:packages_domain/item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_all_items_provider.g.dart';

/// 詳細画面間の移動に利用する、現在の検索結果すべて。
@riverpod
Future<List<Item>> searchAllItems(Ref ref) async {
  final query = ref.watch(itemsSearchQueryProvider);
  final groupId = await ref.watch(currentGroupIdProvider.future);
  final user = await ref.watch(authUserProvider.future);
  if (groupId == null || user == null) {
    return const [];
  }

  return ref
      .read(itemUsecaseProvider)
      .searchAllItems(groupId: groupId, ageGroup: user.ageGroup, query: query);
}
