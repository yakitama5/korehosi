import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:packages_designsystem/src/components/src/bottom_sheet_column.dart';
import 'package:packages_designsystem/src/components/src/expand_width_container.dart';

import 'chips.dart';
import 'model/bottom_sheet_action.dart';

class BottomSheetMultiSelectActionChip<T> extends StatelessWidget {
  const BottomSheetMultiSelectActionChip({
    super.key,
    required this.label,
    required this.iconData,
    this.title,
    this.onApply,
    this.onCancel,
    this.initial,
    required this.actions,
  });

  /// Chip Property
  final Widget label;
  final IconData iconData;
  final ValueChanged<Set<T>>? onApply;
  final VoidCallback? onCancel;

  /// BottomSheet Property
  final Widget? title;
  final Set<T>? initial;
  final List<BottomSheetAction<T>> actions;

  @override
  Widget build(BuildContext context) {
    return LeadingIconInputChip(
      label: label,
      iconData: iconData,
      onPressed: () {
        // BottomSheetの表示
        showModalBottomSheet<T>(
          context: context,
          builder: (context) => _MultiSelectBottomSheet(
            title: title,
            initial: initial,
            actions: actions,
            onApply: onApply,
            onCancel: onCancel,
          ),
        );
      },
      selected: initial?.isNotEmpty ?? false,
      showCheckmark: false,
    );
  }
}

class _MultiSelectBottomSheet<T> extends HookWidget {
  const _MultiSelectBottomSheet({
    super.key,
    required this.actions,
    this.onApply,
    this.onCancel,
    this.title,
    this.initial,
  });

  final Widget? title;
  final List<BottomSheetAction<T>> actions;
  final ValueChanged<Set<T>>? onApply;
  final VoidCallback? onCancel;
  final Set<T>? initial;

  @override
  Widget build(BuildContext context) {
    final selected = useState(initial ?? {});

    return BottomSheetColumn(
      title: title,
      children: [
        ExpandWidthContainer(
          child: SegmentedButton<T>(
            multiSelectionEnabled: true,
            onSelectionChanged: (v) => selected.value = v,
            segments: actions
                .map(
                  (e) => ButtonSegment<T>(
                    value: e.value,
                    icon: e.icon,
                    label: e.title,
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
            BottomSheetCancelButton(
              onPressed: () {
                Navigator.of(context).pop();
                if (onCancel != null) {
                  onCancel!();
                }
              },
            ),
            const Gap(8),
            BottomSheetApplyButton(
              onPressed: () {
                Navigator.of(context).pop();
                if (onApply != null) {
                  onApply!(selected.value);
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}
