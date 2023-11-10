import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/model/dialog_result.dart';
import '../../../application/state/locale_provider.dart';
import '../../../application/usecase/group/group_usecase.dart';
import '../../../application/usecase/group/state/has_current_group_provider.dart';
import '../../../application/usecase/item/item_usecase.dart';
import '../../../application/usecase/item/state/filterd_items_provider.dart';
import '../../../application/usecase/item/state/items_filter_purchase_status_provider.dart';
import '../../../application/usecase/item/state/items_filter_wish_rank_provider.dart';
import '../../../application/usecase/item/state/items_order_provider.dart';
import '../../../domain/item/entity/item.dart';
import '../../../domain/purchase/value_object/purchase_status.dart';
import '../../components/importer.dart';
import '../../routes/importer.dart';
import '../error/components/error_view.dart';
import '../group/components/account_dialog.dart';
import '../group/components/not_group_view.dart';
import '../presentation_mixin.dart';
import 'components/item_order_selector_bottom_sheet.dart';
import 'components/list_empty_view.dart';
import 'components/list_loader_view.dart';
import 'components/purchase_status_selector_bottom_sheet.dart';
import 'components/wish_rank_selector_bottom_sheet.dart';

class ItemsPage extends HookConsumerWidget with PresentationMixin {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final scrollController = useScrollController();
    final asyncJoinedGroup = ref.watch(hasCurrentGroupProvider);

    return SafeArea(
      // CustomScrollViewでAppBarを動的に作成するため、上に対するSafeareaを設定しない
      top: false,
      child: Scaffold(
        body: Scrollbar(
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverAppBar(
                title: Text(l10n.wishList),
                centerTitle: true,
                actions: const [_AccountButton()],
              ),
              SliverPersistentHeader(
                delegate: SliverChipsDelegate(
                  chips: const [
                    _ItemOrderChip(),
                    Gap(8),
                    _PurchaseStatusChip(),
                    Gap(8),
                    _WishRankChip(),
                  ],
                  safeAreaPadding: MediaQuery.paddingOf(context),
                ),
                pinned: true,
              ),
              asyncJoinedGroup.when(
                skipLoadingOnReload: true,
                skipError: true,
                data: (joinedGroup) => joinedGroup
                    ? const _ItemListView()
                    : const _SliverNotGroupView(),
                error: SliverErrorView.new,
                // 一瞬なのでローディング表示しない
                loading: () => const SliverFillRemaining(
                  child: SizedBox.shrink(),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: asyncJoinedGroup.valueOrNull == true
            ? AnimatedSwitcherFab(
                // HACK(yakitama5):固定値にするしかない？
                /// 8の倍数ではないが、文字列が含まれるため許容
                expandWidth: 181,
                duration: const Duration(milliseconds: 150),
                onPressed: () => _onAdd(context, ref),
                icon: const Icon(Icons.add),
                label: Text(l10n.addWishList),
                controller: scrollController,
              )
            : null,
      ),
    );
  }

  void _onAdd(BuildContext context, WidgetRef ref) {
    // 画面遷移
    const ItemCreateRouteData().go(context);
  }
}

class _AccountButton extends HookConsumerWidget with PresentationMixin {
  const _AccountButton();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return IconButton(
      icon: const Icon(Icons.account_circle),
      onPressed: () => onAccount(context, ref),
      tooltip: l10n.account,
    );
  }

  Future<void> onAccount(BuildContext context, WidgetRef ref) async {
    // ダイアログで選択
    final groupId = await showAdaptiveAccountDialog(context);
    if (groupId == null) {
      return;
    }

    // 選択結果に応じてグループを切り替える
    if (context.mounted) {
      final l10n = ref.read(l10nProvider);
      await execute(
        context,
        action: () async =>
            ref.read(groupUsecaseProvider).setCurrentGroupId(groupId: groupId),
        successMessage: l10n.completeChangeGroupMessage,
      );
    }
  }
}

class _SliverNotGroupView extends HookConsumerWidget {
  const _SliverNotGroupView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: NotGroupView(),
    );
  }
}

class _ItemListView extends HookConsumerWidget {
  const _ItemListView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncItems = ref.watch(filterdItemsProvider);
    final l10n = ref.watch(l10nProvider);

    return asyncItems.when(
      // 画面のちらつきを抑えるため、フィルターやリアルタイム反映はローディングを挟まない
      skipLoadingOnReload: true,
      skipError: true,
      data: (items) {
        if (items.isEmpty) {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: ListEmptyView(
              message: l10n.searchEmptyMessage(l10n.wishList),
            ),
          );
        }

        return SliverPadding(
          padding: const EdgeInsets.only(bottom: 120),
          sliver: SliverList.separated(
            itemCount: items.length,
            itemBuilder: (context, index) => _ListTile(items[index]),
            separatorBuilder: (context, index) => const Divider(),
          ),
        );
      },
      error: SliverErrorView.new,
      loading: () => const SliverFillRemaining(
        child: ListLoaderView(),
      ),
    );
  }
}

class _ItemOrderChip extends HookConsumerWidget {
  const _ItemOrderChip();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    final itemOrder = ref.watch(itemsOrderProvider);

    return LeadingIconInputChip(
      label: Text(itemOrder.localeName(l10n)),
      iconData: itemOrder.iconData,
      onPressed: () => onPressed(context, ref),
      // `itemOrder` は未選択がありえないので、`true`固定
      selected: true,
      showCheckmark: false,
    );
  }

  Future<void> onPressed(BuildContext context, WidgetRef ref) async {
    // BottomSheetの表示
    final itemOrder = ref.read(itemsOrderProvider.notifier);
    final result = await ItemOrderSelectorBottomSheet.show(
      context: context,
      useSafeArea: true,
      initial: itemOrder.state,
    );

    // 反映
    if (result != null) {
      itemOrder.update((state) => result);
    }
  }
}

class _PurchaseStatusChip extends HookConsumerWidget {
  const _PurchaseStatusChip();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    final selected = ref.watch(itemsFilterPurchaseStatusProvider);
    final dispName = selected.isEmpty
        ? l10n.status
        : selected.length > 1
            ? l10n.selectNumberText(selected.length)
            : selected.first.localeName(l10n);

    return LeadingIconInputChip(
      label: Text(dispName),
      iconData: Icons.arrow_drop_down,
      onPressed: () => onPressed(context, ref),
      selected: selected.isNotEmpty,
      showCheckmark: selected.isNotEmpty,
    );
  }

  Future<void> onPressed(BuildContext context, WidgetRef ref) async {
    // BottomSheetの表示
    final purchaseStatus = ref.read(itemsFilterPurchaseStatusProvider.notifier);
    final result = await PurchaseStatusSelectorBottomSheet.show(
      context: context,
      initial: purchaseStatus.state,
    );

    // 反映
    if (result != null) {
      purchaseStatus.update((state) => result);
    }
  }
}

class _WishRankChip extends HookConsumerWidget {
  const _WishRankChip();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    final wishRank = ref.watch(itemsFilterWishRankProvider);
    final selected = wishRank != null;

    return LeadingIconInputChip(
      label: selected
          ? Text('${l10n.star}${wishRank.toStringAsFixed(1)}')
          : Text(l10n.wishRank),
      iconData: Icons.arrow_drop_down,
      onPressed: () => onPressed(context, ref),
      selected: selected,
      showCheckmark: selected,
    );
  }

  Future<void> onPressed(BuildContext context, WidgetRef ref) async {
    // BottomSheetの表示
    final wishRank = ref.read(itemsFilterWishRankProvider.notifier);
    final result = await WishRankSelectorBottomSheet.show(
      context: context,
      initial: wishRank.state,
    );

    // 反映
    if (result == null) {
      // do nothing
    } else if (result < 0) {
      wishRank.update((state) => null);
    } else {
      wishRank.update((state) => result);
    }
  }
}

class _ListTile extends HookConsumerWidget with PresentationMixin {
  const _ListTile(this.item);

  final Item item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firstImagePath = item.imagesPath?.firstOrNull;
    final colorScheme = Theme.of(context).colorScheme;
    final l10n = ref.watch(l10nProvider);

    return Slidable(
      key: ValueKey(item.id),
      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        extentRatio: 0.25,
        children: [
          SlidableAction(
            onPressed: (_) async {
              final res = await confirmDismiss(context, ref);
              if (res && context.mounted) {
                await onDelete(context, ref);
              }
            },
            backgroundColor: colorScheme.error,
            foregroundColor: colorScheme.onError,
            icon: Icons.delete,
            label: l10n.delete,
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          ItemRouteData(item.id).go(context);
        },
        title: Text(
          item.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        leading: ImageAspectRatio(
          child: StorageImage(imagePath: firstImagePath),
        ),
      ),
    );
  }

  Future<bool> confirmDismiss(BuildContext context, WidgetRef ref) async {
    // ダイアログの表示
    final l10n = ref.read(l10nProvider);
    final result = await showAdaptiveOkCancelDialog(
      context,
      title: l10n.deleteConfirmTitle,
      message: l10n.deleteCofirmMessage(item.name),
    );
    return result == DialogResult.ok;
  }

  Future<void> onDelete(BuildContext context, WidgetRef ref) async {
    final l10n = ref.read(l10nProvider);
    await execute(
      context,
      action: () => ref.read(itemUsecaseProvider).delete(itemId: item.id),
      successMessage: l10n.completeDeleteMessage,
    );
  }
}
