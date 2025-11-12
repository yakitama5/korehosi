import 'package:packages_domain/common.dart';
import 'package:packages_domain/item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'items_search_query_notifier_provider.g.dart';

/// ほしいものの検索条件を管理するProvider
@riverpod
class ItemsSearchQueryNotifier extends _$ItemsSearchQueryNotifier {
  /// デフォルトクエリの定義
  @override
  ItemsSearchQuery build() => const ItemsSearchQuery(
    purchaseStatuses: [
      PurchaseStatus.notPurchased,
      PurchaseStatus.purchasePlan,
    ],
    itemsOrder: ItemsOrder(
      key: ItemOrderKey.createdAt,
      sortOrder: SortOrder.desc,
    ),
  );

  void changePurchaseStatus(List<PurchaseStatus> purchaseStatuses) {
    state = state.copyWith(purchaseStatuses: purchaseStatuses);
  }

  void changeItemsOrder(ItemsOrder itemsOrder) {
    state = state.copyWith(itemsOrder: itemsOrder);
  }

  void changeMinimumWishRank(double minimumWishRank) {
    state = state.copyWith(minimumWishRank: minimumWishRank);
  }

  void resetMinimumWishRank() {
    state = state.copyWith(minimumWishRank: null);
  }
}
