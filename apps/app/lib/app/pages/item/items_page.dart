import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/group/components/group_select_icon_button.dart';
import 'package:flutter_app/app/pages/item/components/item_sort_key_chip.dart';
import 'package:flutter_app/app/pages/item/components/items_card.dart';
import 'package:flutter_app/app/pages/item/components/items_list_tile.dart';
import 'package:flutter_app/app/pages/item/components/purchase_status_chip.dart';
import 'package:flutter_app/app/pages/item/components/wish_rank_chip.dart';
import 'package:flutter_app/app/routes/src/routes_data.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/group.dart';
import 'package:packages_application/item.dart';
import 'package:packages_core/util.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/designsystem.dart';
import 'package:packages_domain/item.dart';

class ItemsPage extends HookConsumerWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 初期状態はドメイン層に定義
    final viewLayout = ref.watch(itemsViewLayoutNotifierProvider);
    final query = ref.watch(itemsSearchQueryNotifierProvider);
    final scrollController = useScrollController();

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () => ref.read(itemUsecaseProvider).refreshSearchItems(),
        // HACK(yakitama5): SliverAppBar付きのこの構成を共通定義化する
        child: CustomScrollView(
          slivers: [
            const PinnedHeaderSliver(
              child: Material(child: SafeArea(child: SizedBox.shrink())),
            ),
            SliverAppBar(
              primary: false,
              title: Text(i18n.item.itemsPage.title),
              actions: const [GroupSelectIconButton()],
            ),
            PinnedHeaderSliver(
              child: Material(
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 8, end: 8),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
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
                        PurchaseStatusChip(
                          purchaseStatuses: query.purchaseStatuses,
                          onApply: (value) => onApplyPurchaseStatuses(
                            ref,
                            purchaseStatuses: value,
                          ),
                        ),
                        const Gap(12),
                        WishRankChip(
                          wishRank: query.minimumWishRank,
                          onApply: (value) =>
                              onChangeWishRank(ref, wishRank: value),
                          onReset: () => onResetWishRank(ref),
                        ),
                        const Gap(12),
                        ViewLayoutChip(
                          viewLayout: viewLayout,
                          onChanged: (v) => ref
                              .read(itemsViewLayoutNotifierProvider.notifier)
                              .updateViewLayout(viewLayout: v),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            _SliverBody(viewLayout: viewLayout),
          ],
        ),
      ),
      floatingActionButton: AnimatedSwitcherFab(
        // HACK(yakitama5):固定値にするしかない？
        /// 8の倍数ではないが、文字列が含まれるため許容
        expandWidth: 181,
        duration: const Duration(milliseconds: 150),
        onPressed: () => _onAdd(context, ref),
        icon: const Icon(Icons.add),
        label: Text(i18n.item.itemsPage.add),
        controller: scrollController,
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
        .read(itemsSearchQueryNotifierProvider.notifier)
        .changeItemsOrder(selectOrderKey);
  }

  /// 購入状況が選択されたイベント
  void onApplyPurchaseStatuses(
    WidgetRef ref, {
    required Set<PurchaseStatus> purchaseStatuses,
  }) {
    // Providerに変更を通知
    ref
        .read(itemsSearchQueryNotifierProvider.notifier)
        .changePurchaseStatus(purchaseStatuses.toList());
  }

  /// ほしい度が変更されたイベント
  void onChangeWishRank(WidgetRef ref, {required double wishRank}) {
    // Providerに変更を通知
    ref
        .read(itemsSearchQueryNotifierProvider.notifier)
        .changeMinimumWishRank(wishRank);
  }

  /// ほしい度がリセットされたイベント
  void onResetWishRank(WidgetRef ref) {
    // Providerに変更を通知
    ref.read(itemsSearchQueryNotifierProvider.notifier).resetMinimumWishRank();
  }

  /// 追加ボタンが押下されたイベント
  Future<void> _onAdd(BuildContext context, WidgetRef ref) async {
    final currentGroup = await ref.read(currentGroupProvider.future);

    if (!context.mounted) {
      return;
    }

    // グループが選択されていなければ、警告ダイアログを表示
    if (currentGroup != null) {
      final messages = i18n.item.itemsPage.notSelectedGroupDialog;
      await showOkAlertDialog(
        context: context,
        title: messages.title,
        message: messages.message,
      );
      return;
    }

    // 問題なければ遷移
    const ItemCreateRouteData().go(context);
  }
}

class _SliverBody extends HookConsumerWidget {
  const _SliverBody({required this.viewLayout});

  final ViewLayout viewLayout;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 先頭ページを固定で取得
    // エラーハンドリングはコンテンツ取得部分で行うため`valueOrNull`で無視する
    final result = ref.watch(searchItemsProvider(page: 1)).valueOrNull;

    // TODO(yakitama5): グループ未選択 + 空表示を追加

    return SliverSwitchLayoutViewBuilder(
      viewLayout: viewLayout,
      itemCount: result?.totalCount ?? itemsPageConfig.pageSize,
      itemBuilder: (context, index) {
        final page = index ~/ itemsPageConfig.pageSize + 1;
        final indexInPage = index % itemsPageConfig.pageSize;
        final response = ref.watch(searchItemsProvider(page: page));

        return response.when(
          data: (data) {
            // TODO(yakitama5): 空表示を実装
            if (data.items.isEmpty) {
              return const SizedBox.shrink();
            }

            final item = data.items[indexInPage];
            return switch (viewLayout) {
              ViewLayout.grid => ItemsCard(
                key: ValueKey(item),
                item: item,
                onTap: () => onSelect(context, ref),
              ),
              ViewLayout.list => ItemsListTile(
                key: ValueKey(item),
                item: item,
                onTap: () => onSelect(context, ref),
              ),
            };
          },
          loading: () => _ShimmerTile(viewLayout: viewLayout),
          // TODO(yakitama5): エラー表示を分けて記載
          error: (error, __) => ErrorListTile(
            indexInPage: indexInPage,
            isLoading: response.isLoading,
            error: error.toString(),
            onRetry: () {
              ref.invalidate(searchItemsProvider(page: page));
            },
          ),
        );
      },
    );
  }

  void onSelect(BuildContext context, WidgetRef ref) {}
}

class _ShimmerTile extends StatelessWidget {
  const _ShimmerTile({required this.viewLayout});
  final ViewLayout viewLayout;

  @override
  Widget build(BuildContext context) {
    return switch (viewLayout) {
      ViewLayout.list => const _ShimmerListTile(),
      ViewLayout.grid => const ShimmerWidget.rectangular(height: 60),
    };
  }
}

class _ShimmerListTile extends StatelessWidget {
  const _ShimmerListTile();

  @override
  Widget build(BuildContext context) {
    // プライベートWidgetのためマジックナンバーを許容
    return const ListTile(
      title: ShimmerWidget.rectangular(height: 24),
      subtitle: ShimmerWidget.rectangular(height: 16),
      leading: ItemsShimmerListTileLeading(),
    );
  }
}
