import 'package:flutter/material.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/item.dart';

/// 並び替えを行うための`ActionChip`
class ItemSortKeyChip extends StatelessWidget {
  const ItemSortKeyChip({
    super.key,
    required this.onChanged,
    required this.sortKey,
    required this.sortOrder,
  });

  final ValueChanged<ItemOrderKey> onChanged;
  final ItemOrderKey sortKey;
  final SortOrder sortOrder;

  @override
  Widget build(BuildContext context) {
    return BottomSheetSelectActionChip<ItemOrderKey>(
      label: Text(commonI18n.kEnum.itemOrderKey(context: sortKey)),
      actions: ItemOrderKey.values
          .map(
            (e) => BottomSheetAction(
              title: BottomSheetTitleText(
                commonI18n.kEnum.itemOrderKey(context: e),
              ),
              icon: sortKey == e
                  ? Icon(switch (sortOrder) {
                      SortOrder.asc => Icons.arrow_downward_rounded,
                      SortOrder.desc => Icons.arrow_upward_rounded,
                    })
                  : null,
              value: e,
            ),
          )
          .toList(),
      iconData: Icons.sort,
      title: Text(commonI18n.kEnum.itemOrderKey(context: sortKey)),
      initial: sortKey,
      onChanged: onChanged,
    );
  }
}
