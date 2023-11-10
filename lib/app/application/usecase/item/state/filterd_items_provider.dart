import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/item/entity/item.dart';
import '../../../../domain/purchase/entity/purchase.dart';
import '../../../model/item/item_order_key.dart';
import '../../../model/order.dart';
import '../../purchase/state/current_group_age_applicable_purchase_provider.dart';
import 'current_group_items_provider.dart';
import 'items_filter_purchase_status_provider.dart';
import 'items_filter_wish_rank_provider.dart';
import 'items_order_provider.dart';

part 'filterd_items_provider.g.dart';

/// 画面に表示する欲しい物一覧
@riverpod
Future<List<Item>> filterdItems(FilterdItemsRef ref) async {
  final items = await ref.watch(currentGroupItemsProvider.future);
  final itemOrder = ref.watch(itemsOrderProvider);
  final purchaseStatus = ref.watch(itemsFilterPurchaseStatusProvider);
  final wishRank = ref.watch(itemsFilterWishRankProvider);
  final asyncPurchases = items.map(
    (item) async => ref.watch(
      currentGroupAgeApplicablePurchaseProvider(itemId: item.id).future,
    ),
  );
  final purchases = (await Future.wait(asyncPurchases)).whereNotNull();
  final purchaseMap = Map.fromIterables(purchases.map((e) => e.id), purchases);

  // 絞り込み + ソート
  return items.where((item) {
    // ステータスによる絞り込み
    final isMatch = purchaseStatus.map((s) {
      final purchase = purchaseMap[item.id];
      final status = purchase.status;
      return status == s;
    }).reduce((v, e) => v || e);
    if (!isMatch) {
      return false;
    }

    // 欲しい度による絞り込み
    // 未満を弾く
    if (wishRank != null && item.wishRank < wishRank) {
      return false;
    }

    return true;
  }).sorted(
    (a, b) {
      late final Item source;
      late final Item target;
      if (itemOrder.sortOrder == SortOrder.asc) {
        source = a;
        target = b;
      } else {
        source = b;
        target = a;
      }

      return switch (itemOrder.key) {
        ItemOrderKey.name => source.name.compareTo(target.name),
        ItemOrderKey.wishRank => source.wishRank.compareTo(target.wishRank),
        ItemOrderKey.createdAt => source.createdAt.compareTo(target.createdAt),
      };
    },
  ).toList();
}
