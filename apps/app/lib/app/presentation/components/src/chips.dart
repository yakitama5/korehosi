import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LeadingIconInputChip extends StatelessWidget {
  const LeadingIconInputChip({
    super.key,
    required this.label,
    required this.iconData,
    this.onPressed,
    this.selected = false,
    this.showCheckmark,
  });

  final Widget label;
  final IconData iconData;
  final VoidCallback? onPressed;
  final bool selected;
  final bool? showCheckmark;

  @override
  Widget build(BuildContext context) {
    return InputChip(
      label: Row(
        children: [
          label,
          const Gap(8),
          Icon(
            iconData,
            size: 18,
          ),
        ],
      ),
      onPressed: onPressed,
      showCheckmark: showCheckmark,
      selected: selected,
    );
  }
}
