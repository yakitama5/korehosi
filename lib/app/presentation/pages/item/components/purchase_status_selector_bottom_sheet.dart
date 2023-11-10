import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../application/state/locale_provider.dart';
import '../../../../domain/purchase/value_object/purchase_status.dart';
import '../../../components/importer.dart';

class PurchaseStatusSelectorBottomSheet extends StatefulHookConsumerWidget {
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
  ConsumerState<ConsumerStatefulWidget> createState() => _State();
}

class _State extends ConsumerState<PurchaseStatusSelectorBottomSheet> {
  Set<PurchaseStatus> selected = {};

  @override
  void initState() {
    super.initState();
    selected = widget.initial ?? {};
  }

  @override
  Widget build(BuildContext context) {
    final l10n = ref.watch(l10nProvider);

    return BottomSheetColumn(
      titleData: l10n.status,
      children: [
        ExpandWidthContainer(
          child: SegmentedButton<PurchaseStatus>(
            multiSelectionEnabled: true,
            onSelectionChanged: (v) => setState(() {
              selected = v;
            }),
            segments: PurchaseStatus.values
                .map(
                  (e) => ButtonSegment<PurchaseStatus>(
                    value: e,
                    label: Text(e.localeName(l10n)),
                  ),
                )
                .toList(),
            selected: selected,
          ),
        ),
        const Gap(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.cancel),
            ),
            const Gap(8),
            FilledButton.tonal(
              onPressed: () => Navigator.pop(context, selected),
              child: Text(l10n.apply),
            ),
          ],
        ),
      ],
    );
  }
}
