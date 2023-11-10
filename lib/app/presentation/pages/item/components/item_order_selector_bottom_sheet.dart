import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../application/config/items_config.dart';
import '../../../../application/model/item/item_order_key.dart';
import '../../../../application/model/item/item_order_model.dart';
import '../../../../application/model/order.dart';
import '../../../../application/state/locale_provider.dart';
import '../../../components/importer.dart';

/// (モーダル専用)並び替えの種類
final _orderKeyProvider = StateProvider.autoDispose<ItemOrderKey>(
  (ref) => itemsConfig.defaultOrder.key,
);

///(モーダル専用)昇順/降順
final _sortOrderProvider = StateProvider.autoDispose<SortOrder>(
  (ref) => itemsConfig.defaultOrder.sortOrder,
);

class ItemOrderSelectorBottomSheet extends HookConsumerWidget {
  const ItemOrderSelectorBottomSheet({super.key, required this.initial});

  static Future<ItemOrderModel?> show({
    required BuildContext context,
    bool useSafeArea = false,
    required ItemOrderModel initial,
  }) =>
      showModalBottomSheet<ItemOrderModel?>(
        context: context,
        useSafeArea: true,
        builder: (context) => ItemOrderSelectorBottomSheet(initial: initial),
      );

  final ItemOrderModel initial;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return BottomSheetColumn(
      titleData: l10n.sortOrder,
      children: const [
        _OrderKeySegmentedButton(),
        Gap(16),
        _SortOrderSegmentedButton(),
        Gap(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _CancelButton(),
            Gap(8),
            _ApplyButton(),
          ],
        ),
      ],
    );
  }
}

class _OrderKeySegmentedButton extends HookConsumerWidget {
  const _OrderKeySegmentedButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final orderKey = ref.watch(_orderKeyProvider);

    return ExpandWidthContainer(
      child: SegmentedButton<ItemOrderKey>(
        onSelectionChanged: (v) =>
            ref.read(_orderKeyProvider.notifier).update((state) => v.first),
        segments: ItemOrderKey.values
            .map(
              (e) => ButtonSegment<ItemOrderKey>(
                value: e,
                label: Text(e.localeName(l10n)),
              ),
            )
            .toList(),
        selected: {orderKey},
      ),
    );
  }
}

class _SortOrderSegmentedButton extends HookConsumerWidget {
  const _SortOrderSegmentedButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);
    final sortOrder = ref.watch(_sortOrderProvider);

    return ExpandWidthContainer(
      child: SegmentedButton<SortOrder>(
        onSelectionChanged: (v) {
          ref.read(_sortOrderProvider.notifier).update((state) => v.first);
        },
        segments: SortOrder.values
            .map(
              (e) => ButtonSegment<SortOrder>(
                value: e,
                label: Text(e.localeName(l10n)),
              ),
            )
            .toList(),
        selected: {sortOrder},
      ),
    );
  }
}

class _ApplyButton extends HookConsumerWidget {
  const _ApplyButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return FilledButton.tonal(
      onPressed: () {
        final result = ItemOrderModel(
          key: ref.read(_orderKeyProvider),
          sortOrder: ref.read(_sortOrderProvider),
        );
        Navigator.pop(context, result);
      },
      child: Text(l10n.apply),
    );
  }
}

class _CancelButton extends HookConsumerWidget {
  const _CancelButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(l10n.cancel),
    );
  }
}
