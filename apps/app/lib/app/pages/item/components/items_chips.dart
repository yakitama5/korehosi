import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/item/components/item_sort_key_chip.dart';
import 'package:flutter_app/app/pages/item/components/purchase_status_chip.dart';
import 'package:flutter_app/app/pages/item/components/wish_rank_chip.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/item.dart';
import 'package:packages_core/util.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/item.dart';

class ItemsChips extends ConsumerWidget {
  const ItemsChips({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewLayout = ref.watch(itemsViewLayoutProvider);
    final query = ref.watch(itemsSearchQueryProvider);

    return PinnedHeaderSliver(
      child: Material(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // 表示形式
                ViewLayoutChip(
                  viewLayout: viewLayout,
                  onChanged: (v) => ref
                      .read(itemsViewLayoutProvider.notifier)
                      .updateViewLayout(viewLayout: v),
                ),
                const Gap(12),
                // 並び替え
                ItemSortKeyChip(
                  onChanged: (orderKey) => onSortChanged(
                    ref,
                    orderKey: orderKey,
                    itemsOrder: query.itemsOrder,
                  ),
                  sortKey: query.itemsOrder.key,
                  sortOrder: query.itemsOrder.sortOrder,
                ),
                const Gap(12),
                // 購入状況
                PurchaseStatusChip(
                  purchaseStatuses: query.purchaseStatuses,
                  onApply: (value) =>
                      onApplyPurchaseStatuses(ref, purchaseStatuses: value),
                ),
                const Gap(12),
                // ほしい度
                WishRankChip(
                  wishRank: query.minimumWishRank,
                  onApply: (value) => onChangeWishRank(ref, wishRank: value),
                  onReset: () => onResetWishRank(ref),
                ),
                const Gap(24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// 並び替えが変更されたイベント
  void onSortChanged(
    WidgetRef ref, {
    required ItemOrderKey orderKey,
    required ItemsOrder itemsOrder,
  }) {
    // Providerに変更を通知
    logger.d('onSortChanged');
    final selectOrderKey = itemsOrder.selectOrderKey(orderKey);
    ref
        .read(itemsSearchQueryProvider.notifier)
        .changeItemsOrder(selectOrderKey);
  }

  /// 購入状況が選択されたイベント
  void onApplyPurchaseStatuses(
    WidgetRef ref, {
    required Set<PurchaseStatus> purchaseStatuses,
  }) {
    // Providerに変更を通知
    ref
        .read(itemsSearchQueryProvider.notifier)
        .changePurchaseStatus(purchaseStatuses.toList());
  }

  /// ほしい度が変更されたイベント
  void onChangeWishRank(WidgetRef ref, {required double wishRank}) {
    // Providerに変更を通知
    ref.read(itemsSearchQueryProvider.notifier).changeMinimumWishRank(wishRank);
  }

  /// ほしい度がリセットされたイベント
  void onResetWishRank(WidgetRef ref) {
    // Providerに変更を通知
    ref.read(itemsSearchQueryProvider.notifier).resetMinimumWishRank();
  }
}
