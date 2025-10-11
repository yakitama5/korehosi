import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_domain/item.dart';

import '../../../components/importer.dart';

class PurchaseStatusSelectorBottomSheet extends HookWidget {
  const PurchaseStatusSelectorBottomSheet({super.key, required this.initial});

  static Future<Set<PurchaseStatus>?> show({
    required BuildContext context,
    bool useSafeArea = false,
    Set<PurchaseStatus>? initial,
  }) => showModalBottomSheet<Set<PurchaseStatus>>(
    context: context,
    useSafeArea: true,
    builder: (context) => PurchaseStatusSelectorBottomSheet(initial: initial),
  );

  final Set<PurchaseStatus>? initial;

  @override
  Widget build(BuildContext context) {
    final selected = useState(initial ?? {});

    return BottomSheetColumn(
      titleData: i18n.app.status,
      children: [
        ExpandWidthContainer(
          child: SegmentedButton<PurchaseStatus>(
            multiSelectionEnabled: true,
            onSelectionChanged: (v) => selected.value = v,
            segments: PurchaseStatus.values
                .map(
                  (e) => ButtonSegment<PurchaseStatus>(
                    value: e,
                    label: Text(commonI18n.kEnum.purchaseStatus(context: e)),
                  ),
                )
                .toList(),
            selected: selected.value,
          ),
        ),
        const Gap(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(i18n.app.cancel),
            ),
            const Gap(8),
            FilledButton.tonal(
              onPressed: () => Navigator.of(context).pop(selected.value),
              child: Text(i18n.app.apply),
            ),
          ],
        ),
      ],
    );
  }
}
