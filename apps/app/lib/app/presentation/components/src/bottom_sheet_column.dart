import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BottomSheetColumn extends StatelessWidget {
  const BottomSheetColumn({
    super.key,
    this.children,
    this.titleData,
  });

  final List<Widget>? children;
  final String? titleData;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(8),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              titleData ?? '',
              style: textTheme.titleMedium,
            ),
          ),
          ...[
            const Gap(8),
            if (children != null) ...children!,
          ],
        ],
      ),
    );
  }
}
