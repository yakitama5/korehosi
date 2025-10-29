import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:packages_designsystem/i18n.dart';

/// BottomSheetで利用を想定する共通のColumn
class BottomSheetColumn extends StatelessWidget {
  const BottomSheetColumn({super.key, this.children, this.title});

  final List<Widget>? children;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(8),
          title ?? const SizedBox.shrink(),
          ...[const Gap(8), if (children != null) ...children!],
        ],
      ),
    );
  }
}

/// BottomSheetで利用を想定する共通の「適用」ボタン
class BottomSheetApplyButton extends StatelessWidget {
  const BottomSheetApplyButton({super.key, required this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => FilledButton.tonal(
    onPressed: onPressed,
    child: Text(commonI18n.common.apply),
  );
}

/// BottomSheetで利用を想定する共通の「キャンセル」ボタン
class BottomSheetCancelButton extends StatelessWidget {
  const BottomSheetCancelButton({super.key, required this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => TextButton(
    onPressed: () => Navigator.of(context).pop(),
    child: Text(commonI18n.common.cancel),
  );
}

/// BottomSheetで利用を想定する共通の「リセット」ボタン
class BottomSheetResetButton extends StatelessWidget {
  const BottomSheetResetButton({super.key, required this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.of(context).pop<double>(-1),
      child: Text(commonI18n.common.reset),
    );
  }
}
