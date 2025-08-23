import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

import '../../../../application/model/item/item_order_key.dart';
import '../../../../application/model/item/item_order_model.dart';
import '../../../../application/model/order.dart';
import '../../../components/importer.dart';
import '../../../hooks/src/use_l10n.dart';

class ItemOrderSelectorBottomSheet extends HookWidget {
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
  Widget build(BuildContext context) {
    final l10n = useL10n();
    final orderKey = useState(initial.key);
    final sortOrder = useState(initial.sortOrder);

    return BottomSheetColumn(
      titleData: l10n.sortOrder,
      children: [
        _OrderKeySegmentedButton(
          value: orderKey.value,
          onSelectionChanged: (v) => orderKey.value = v.first,
        ),
        const Gap(16),
        _SortOrderSegmentedButton(
          value: sortOrder.value,
          onSelectionChanged: (v) => sortOrder.value = v.first,
        ),
        const Gap(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const _CancelButton(),
            const Gap(8),
            _ApplyButton(
              // 呼び出し元に選択値を返却
              onPressed: () => Navigator.pop(
                context,
                ItemOrderModel(
                  key: orderKey.value,
                  sortOrder: sortOrder.value,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _OrderKeySegmentedButton extends HookWidget {
  const _OrderKeySegmentedButton({
    required this.onSelectionChanged,
    required this.value,
  });

  final void Function(Set<ItemOrderKey> v) onSelectionChanged;
  final ItemOrderKey value;

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();

    return ExpandWidthContainer(
      child: SegmentedButton<ItemOrderKey>(
        onSelectionChanged: onSelectionChanged,
        segments: ItemOrderKey.values
            .map(
              (e) => ButtonSegment<ItemOrderKey>(
                value: e,
                label: Text(e.localeName(l10n)),
              ),
            )
            .toList(),
        selected: {value},
      ),
    );
  }
}

class _SortOrderSegmentedButton extends HookWidget {
  const _SortOrderSegmentedButton({
    required this.onSelectionChanged,
    required this.value,
  });

  final void Function(Set<SortOrder> v) onSelectionChanged;
  final SortOrder value;

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();

    return ExpandWidthContainer(
      child: SegmentedButton<SortOrder>(
        onSelectionChanged: onSelectionChanged,
        segments: SortOrder.values
            .map(
              (e) => ButtonSegment<SortOrder>(
                value: e,
                label: Text(e.localeName(l10n)),
              ),
            )
            .toList(),
        selected: {value},
      ),
    );
  }
}

class _ApplyButton extends HookWidget {
  const _ApplyButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();

    return FilledButton.tonal(
      onPressed: onPressed,
      child: Text(l10n.apply),
    );
  }
}

class _CancelButton extends HookWidget {
  const _CancelButton();

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();

    return TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(l10n.cancel),
    );
  }
}
