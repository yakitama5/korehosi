import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/item/extension/purchase_status_icon_extension.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/item.dart';

/// 購入状況を選択するための`ActionChip`
class PurchaseStatusChip extends StatelessWidget {
  const PurchaseStatusChip({
    super.key,
    this.onApply,
    this.onCancel,
    this.purchaseStatuses,
  });

  final ValueChanged<Set<PurchaseStatus>>? onApply;
  final VoidCallback? onCancel;
  final List<PurchaseStatus>? purchaseStatuses;

  @override
  Widget build(BuildContext context) {
    // 表示名を設定
    final label = (purchaseStatuses?.isEmpty ?? true)
        ? i18n.item.common.status
        : purchaseStatuses!.length > 1
        ? i18n.item.itemsPage.selectNumberText(length: purchaseStatuses!.length)
        : commonI18n.kEnum.purchaseStatus(context: purchaseStatuses!.first);

    return BottomSheetMultiSelectActionChip<PurchaseStatus>(
      label: Text(label),
      actions: PurchaseStatus.values
          .map(
            (e) => BottomSheetAction(
              title: Text(commonI18n.kEnum.purchaseStatus(context: e)),
              icon: Icon(e.iconData),
              value: e,
            ),
          )
          .toList(),
      iconData: Icons.sort,
      title: BottomSheetTitleText(i18n.item.common.status),
      initial: purchaseStatuses?.toSet(),
      onApply: onApply,
      onCancel: onCancel,
    );
  }
}
