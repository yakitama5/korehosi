import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../domain/purchase/value_object/purchase_status.dart';
import '../../../components/importer.dart';
import '../../../hooks/src/use_l10n.dart';

class PurchaseStatusSelectorBottomSheet extends HookWidget {
  const PurchaseStatusSelectorBottomSheet({super.key, required this.initial});

  static Future<Set<PurchaseStatus>?> show({
    required BuildContext context,
    bool useSafeArea = false,
    Set<PurchaseStatus>? initial,
  }) =>
      showModalBottomSheet<Set<PurchaseStatus>>(
        context: context,
        useSafeArea: true,
        builder: (context) =>
            PurchaseStatusSelectorBottomSheet(initial: initial),
      );

  final Set<PurchaseStatus>? initial;

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();
    final selected = useState(initial ?? {});

    return BottomSheetColumn(
      titleData: l10n.status,
      children: [
        ExpandWidthContainer(
          child: SegmentedButton<PurchaseStatus>(
            multiSelectionEnabled: true,
            onSelectionChanged: (v) => selected.value = v,
            segments: PurchaseStatus.values
                .map(
                  (e) => ButtonSegment<PurchaseStatus>(
                    value: e,
                    label: Text(e.localeName(l10n)),
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
              onPressed: () => context.pop(),
              child: Text(l10n.cancel),
            ),
            const Gap(8),
            FilledButton.tonal(
              onPressed: () => context.pop(selected.value),
              child: Text(l10n.apply),
            ),
          ],
        ),
      ],
    );
  }
}
