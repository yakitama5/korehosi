import 'package:flutter/material.dart';
import 'package:packages_designsystem/src/extension/view_layout_extension.dart';
import 'package:packages_domain/designsystem.dart';

class ViewLayoutChip extends StatelessWidget {
  const ViewLayoutChip({
    super.key,
    required this.viewLayout,
    required this.onChanged,
  });

  final ViewLayout viewLayout;
  final ValueChanged<ViewLayout> onChanged;

  @override
  Widget build(BuildContext context) {
    return InputChip(
      label: Icon(viewLayout.iconData, size: 18),
      onPressed: () {
        final value = switch (viewLayout) {
          ViewLayout.grid => ViewLayout.list,
          ViewLayout.list => ViewLayout.grid,
        };
        onChanged(value);
      },
      showCheckmark: false,
      selected: false,
    );
  }
}
