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

  ItemsSearchQuery copyWith({
    double? minimumWishRank,
    List<PurchaseStatus>? purchaseStatuses,
    ItemsOrder? itemsOrder,
  }) => state.copyWith(
    itemsOrder: itemsOrder ?? state.itemsOrder,
    purchaseStatuses: purchaseStatuses ?? state.purchaseStatuses,
    minimumWishRank: minimumWishRank ?? state.minimumWishRank,
  );
}
