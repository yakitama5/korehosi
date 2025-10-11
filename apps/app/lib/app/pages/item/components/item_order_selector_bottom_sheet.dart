import 'package:flutter/material.dart';
import 'package:flutter_app/app/components/src/bottom_sheet_column.dart';
import 'package:flutter_app/app/components/src/expand_width_container.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:packages_application/item.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_domain/common.dart';

class ItemOrderSelectorBottomSheet extends HookWidget {
  const ItemOrderSelectorBottomSheet({super.key, required this.initial});

  static Future<ItemOrderModel?> show({
    required BuildContext context,
    bool useSafeArea = false,
    required ItemOrderModel initial,
  }) => showModalBottomSheet<ItemOrderModel?>(
    context: context,
    useSafeArea: true,
    builder: (context) => ItemOrderSelectorBottomSheet(initial: initial),
  );

  final ItemOrderModel initial;

  @override
  Widget build(BuildContext context) {
    final orderKey = useState(initial.key);
    final sortOrder = useState(initial.sortOrder);

    return BottomSheetColumn(
      titleData: i18n.app.sortOrder,
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
              onPressed: () => Navigator.of(context).pop(
                ItemOrderModel(key: orderKey.value, sortOrder: sortOrder.value),
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
    return ExpandWidthContainer(
      child: SegmentedButton<ItemOrderKey>(
        onSelectionChanged: onSelectionChanged,
        segments: ItemOrderKey.values
            .map(
              (e) => ButtonSegment<ItemOrderKey>(
                value: e,
                label: Text(commonI18n.kEnum.itemOrderKey(context: e)),
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
    return ExpandWidthContainer(
      child: SegmentedButton<SortOrder>(
        onSelectionChanged: onSelectionChanged,
        segments: SortOrder.values
            .map(
              (e) => ButtonSegment<SortOrder>(
                value: e,
                label: Text(commonI18n.kEnum.sortOrder(context: e)),
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
    return FilledButton.tonal(
      onPressed: onPressed,
      child: Text(i18n.app.apply),
    );
  }
}

class _CancelButton extends HookWidget {
  const _CancelButton();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(i18n.app.cancel),
    );
  }
}
