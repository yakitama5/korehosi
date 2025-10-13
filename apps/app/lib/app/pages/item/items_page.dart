import 'dart:async';

import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/group/components/account_dialog.dart';
import 'package:flutter_app/app/pages/group/components/not_group_view.dart';
import 'package:flutter_app/app/pages/item/components/item_order_selector_bottom_sheet.dart';
import 'package:flutter_app/app/pages/item/components/list_empty_view.dart';
import 'package:flutter_app/app/pages/item/components/list_loader_view.dart';
import 'package:flutter_app/app/pages/item/components/purchase_status_selector_bottom_sheet.dart';
import 'package:flutter_app/app/pages/item/components/wish_rank_selector_bottom_sheet.dart';
import 'package:flutter_app/app/routes/src/routes_data.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/group.dart';
import 'package:packages_application/item.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/item.dart';

class ItemsPage extends HookConsumerWidget with PresentationMixin {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ephemeral state

    final scrollController = useScrollController();
    final itemOrder = useState(itemsConfig.defaultOrder);
    final wishRank = useState(itemsConfig.defaultWishRank);
    final purchaseStatus = useState(itemsConfig.defaultPurchaseStatus);

    return SafeArea(
      // CustomScrollViewでAppBarを動的に作成するため、上に対するSafeareaを設定しない
      top: false,
      child: Scaffold(
        body: Scrollbar(
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverAppBar(
                title: Text(i18n.item.itemsPage.title),
                centerTitle: true,
                actions: const [_AccountButton()],
              ),
              SliverPersistentHeader(
                delegate: SliverChipsDelegate(
                  chips: [
                    _ItemOrderChip(
                      value: itemOrder.value,
                      onChanged: (v) => itemOrder.value = v,
                    ),
                    const Gap(8),
                    _PurchaseStatusChip(
                      value: purchaseStatus.value,
                      onChanged: (v) => purchaseStatus.value = v,
                    ),
                    const Gap(8),
                    _WishRankChip(
                      value: wishRank.value,
                      onChanged: (v) => wishRank.value = v,
                    ),
                  ],
                  safeAreaPadding: MediaQuery.paddingOf(context),
                ),
                pinned: true,
              ),
              _SliverBody(
                itemOrder: itemOrder.value,
                purchaseStatus: purchaseStatus.value,
                wishRank: wishRank.value,
              ),
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
      ),
    );
  }

  Future<void> _onAdd(BuildContext context, WidgetRef ref) async {
    final currentGroup = await ref.read(currentGroupProvider.future);

    if (!context.mounted) {
      return;
    }
    if (currentGroup != null) {
      const ItemCreateRouteData().go(context);
      return;
    }

    final messages = i18n.item.itemsPage.notSelectedGroupDialog;
    await showOkAlertDialog(
      context: context,
      title: messages.title,
      message: messages.message,
    );
  }
}

class _SliverBody extends HookConsumerWidget {
  const _SliverBody({
    this.wishRank,
    required this.itemOrder,
    required this.purchaseStatus,
  });

  final double? wishRank;
  final ItemOrderModel itemOrder;
  final Set<PurchaseStatus> purchaseStatus;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // app state
    final items = ref.watch(currentGroupItemsProvider);
    final purchases = ref.watch(currentGroupAgeApplicablePurchasesProvider);
    final currentGroup = ref.watch(currentGroupProvider);

    return switch ((currentGroup, items, purchases)) {
      // グループが未選択であればグループ選択表示
      (AsyncValue(value: null, hasValue: true), _, _) =>
        const _SliverNotGroupView(),

      // グループが選択されていれば一覧を表示
      // `skipLoadingOnReload:true`を想定するため`AsyncValue(hasValue: true)`で判定
      (
        AsyncValue(value: final Group groupData, hasValue: true),
        AsyncValue(value: final List<Item> itemsData, hasValue: true),
        AsyncValue(value: final List<Purchase> purchasesData, hasValue: true),
      ) =>
        _ItemListView(
          currentGroup: groupData,
          items: itemsData,
          purchases: purchasesData,
          itemOrder: itemOrder,
          purchaseStatus: purchaseStatus,
          wishRank: wishRank,
        ),

      // いずれかがエラーの場合はエラー表示
      (AsyncError(error: final error, stackTrace: final stackTrace), _, _) ||
      (_, AsyncError(error: final error, stackTrace: final stackTrace), _) ||
      (
        _,
        _,
        AsyncError(error: final error, stackTrace: final stackTrace),
      ) => SliverErrorView(error, stackTrace),

      // ローディング
      _ => const SliverFillRemaining(child: ListLoaderView()),
    };
  }
}

class _AccountButton extends HookConsumerWidget with PresentationMixin {
  const _AccountButton();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      icon: const Icon(Icons.account_circle),
      onPressed: () => onAccount(context, ref),
      tooltip: i18n.item.itemsPage.account,
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
      await execute(
        action: () async =>
            ref.read(groupUsecaseProvider).setCurrentGroupId(groupId: groupId),
        successMessage: i18n.item.itemsPage.completeChangeGroup,
      );
    }
  }
}

class _SliverNotGroupView extends StatelessWidget {
  const _SliverNotGroupView();

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: NotGroupView(),
    );
  }
}

class _ItemListView extends HookWidget {
  const _ItemListView({
    required this.items,
    required this.purchases,
    required this.currentGroup,
    this.wishRank,
    required this.itemOrder,
    required this.purchaseStatus,
  });

  final List<Item> items;
  final List<Purchase> purchases;
  final Group currentGroup;
  final double? wishRank;
  final ItemOrderModel itemOrder;
  final Set<PurchaseStatus> purchaseStatus;

  @override
  Widget build(BuildContext context) {
    final filterdItems = _filterItems();

    if (filterdItems.isEmpty) {
      return SliverFillRemaining(
        hasScrollBody: false,
        child: ListEmptyView(message: i18n.item.itemsPage.itemEmpty),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.only(bottom: 120),
      sliver: SliverList.separated(
        itemCount: filterdItems.length,
        itemBuilder: (context, index) => _ListTile(filterdItems[index]),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }

  List<Item> _filterItems() {
    final purchaseMap = Map.fromIterables(
      purchases.map((e) => e.id),
      purchases,
    );

    // 絞り込み + ソート
    return items
        .where((item) {
          // ステータスによる絞り込み
          final isMatch = purchaseStatus
              .map((s) {
                final purchase = purchaseMap[item.id];
                final status = purchase.status;
                return status == s;
              })
              .reduce((v, e) => v || e);
          if (!isMatch) {
            return false;
          }

          // 欲しい度による絞り込み
          // 未満を弾く
          if (wishRank != null && item.wishRank < wishRank!) {
            return false;
          }

          return true;
        })
        .sorted((a, b) {
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
            ItemOrderKey.createdAt => source.createdAt.compareTo(
              target.createdAt,
            ),
          };
        })
        .toList();
  }
}

class _ItemOrderChip extends HookWidget {
  const _ItemOrderChip({required this.value, required this.onChanged});

  final ItemOrderModel value;
  final void Function(ItemOrderModel v) onChanged;

  @override
  Widget build(BuildContext context) {
    return LeadingIconInputChip(
      label: Text(commonI18n.kEnum.itemOrderKey(context: value.key)),
      iconData: value.iconData,
      onPressed: () async {
        // BottomSheetの表示
        final result = await ItemOrderSelectorBottomSheet.show(
          context: context,
          useSafeArea: true,
          initial: value,
        );

        // 反映
        if (result != null) {
          onChanged(result);
        }
      },
      // `itemOrder` は未選択がありえないので、`true`固定
      selected: true,
      showCheckmark: false,
    );
  }
}

class _PurchaseStatusChip extends HookWidget {
  const _PurchaseStatusChip({required this.value, required this.onChanged});

  final Set<PurchaseStatus> value;
  final void Function(Set<PurchaseStatus> v) onChanged;

  @override
  Widget build(BuildContext context) {
    final dispName = value.isEmpty
        ? i18n.item.common.status
        : value.length > 1
        ? i18n.item.itemsPage.selectNumberText(length: value.length)
        : commonI18n.kEnum.purchaseStatus(context: value.first);

    return LeadingIconInputChip(
      label: Text(dispName),
      iconData: Icons.arrow_drop_down,
      onPressed: () async {
        // BottomSheetの表示
        final result = await PurchaseStatusSelectorBottomSheet.show(
          context: context,
          initial: value,
        );

        // 反映
        if (result != null) {
          onChanged(result);
        }
      },
      selected: value.isNotEmpty,
      showCheckmark: value.isNotEmpty,
    );
  }
}

class _WishRankChip extends HookWidget {
  const _WishRankChip({required this.value, required this.onChanged});

  final double? value;
  final void Function(double? v) onChanged;

  @override
  Widget build(BuildContext context) {
    final selected = value != null;

    return LeadingIconInputChip(
      label: selected
          ? Text(
              i18n.item.itemsPage.wishRankFormat(
                value: value!.toStringAsFixed(1),
              ),
            )
          : Text(i18n.item.common.wishRank),
      iconData: Icons.arrow_drop_down,
      onPressed: () async {
        // BottomSheetの表示
        final result = await WishRankSelectorBottomSheet.show(
          context: context,
          initial: value,
        );

        // 反映
        if (result == null) {
          // do nothing
        } else if (result < 0) {
          onChanged(null);
        } else {
          onChanged(result);
        }
      },
      selected: selected,
      showCheckmark: selected,
    );
  }
}

class _ListTile extends HookConsumerWidget with PresentationMixin {
  const _ListTile(this.item);

  final Item item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firstImagePath = item.imagesPath?.firstOrNull;
    final colorScheme = Theme.of(context).colorScheme;

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
            label: commonI18n.common.delete,
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          ItemRouteData(item.id).go(context);
        },
        title: Text(item.name, maxLines: 2, overflow: TextOverflow.ellipsis),
        leading: ImageAspectRatio(
          child: StorageImage(imagePath: firstImagePath),
        ),
      ),
    );
  }

  Future<bool> confirmDismiss(BuildContext context, WidgetRef ref) async {
    // ダイアログの表示
    final messages = commonI18n.common.deleteConfirmDialog;
    final result = await showOkCancelAlertDialog(
      context: context,
      title: messages.title,
      message: messages.message(name: item.name),
    );
    return result == OkCancelResult.ok;
  }

  Future<void> onDelete(BuildContext context, WidgetRef ref) async {
    await execute(
      action: () => ref.read(itemUsecaseProvider).delete(itemId: item.id),
      successMessage: commonI18n.common.deletionComplete,
    );
  }
}
