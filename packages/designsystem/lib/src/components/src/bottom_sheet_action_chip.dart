import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'chips.dart';
import 'model/bottom_sheet_action.dart';

class BottomSheetSelectActionChip<T> extends StatelessWidget {
  const BottomSheetSelectActionChip({
    super.key,
    required this.label,
    required this.iconData,
    this.title,
    this.onChanged,
    this.initial,
    required this.actions,
  });

  /// Chip Property
  final Widget label;
  final IconData iconData;
  final ValueChanged<T>? onChanged;

  /// BottomSheet Property
  final Widget? title;
  final T? initial;
  final List<BottomSheetAction<T>> actions;

  void _handleChange(T? value) {
    if (onChanged == null || value == null) {
      return;
    }

    return onChanged!(value);
  }

  @override
  Widget build(BuildContext context) {
    return LeadingIconInputChip(
      label: label,
      iconData: iconData,
      onPressed: () async {
        // BottomSheetの表示
        final response = await showModalBottomSheet<T>(
          context: context,
          builder: (context) => _BottomSheet(
            title: title,
            initial: initial,
            actions: actions,
            onChanged: onChanged,
          ),
        );

        // 値の変更
        _handleChange(response);
      },
      // `itemOrder` は未選択がありえないので、`true`固定
      selected: true,
      showCheckmark: false,
    );
  }
}

class _BottomSheet<T> extends StatelessWidget {
  const _BottomSheet({
    required this.actions,
    this.onChanged,
    this.title,
    this.initial,
  });

  final Widget? title;
  final List<BottomSheetAction<T>> actions;
  final ValueChanged<T>? onChanged;
  final T? initial;

  @override
  Widget build(BuildContext context) {
    final hasAnyIcon = actions.any((e) => e.icon != null);
    final cs = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsetsDirectional.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(8),
          ...[
            ListTile(
              title: title,
            ),
            const Divider(),
            ...actions.map((a) {
              final icon = a.icon ??
                  (hasAnyIcon
                      ? const SizedBox(
                          width: 24,
                        )
                      : null);
              final selected = a.value == initial;

              return ListTile(
                title: a.title,
                selected: selected,
                selectedTileColor: cs.primaryContainer,
                selectedColor: cs.onPrimaryContainer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                leading: icon,
                onTap: () => Navigator.pop(context, a.value),
              );
            }),
          ],
        ],
      ),
    );
  }
}
