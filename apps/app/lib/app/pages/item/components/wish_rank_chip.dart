import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/item/components/rating_icon.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:reactive_flutter_rating_bar/reactive_flutter_rating_bar.dart';

/// ほしい度を選択するための`ActionChip`
class WishRankChip extends StatelessWidget {
  const WishRankChip({
    super.key,
    this.onApply,
    this.onCancel,
    this.wishRank,
    this.onReset,
  });

  final ValueChanged<double>? onApply;
  final VoidCallback? onCancel;
  final VoidCallback? onReset;
  final double? wishRank;

  @override
  Widget build(BuildContext context) {
    // 表示名を設定
    final label = (wishRank == null)
        ? i18n.item.common.wishRank
        : i18n.item.itemsPage.wishRankFormat(
            value: wishRank!.toStringAsFixed(1),
          );

    return LeadingIconInputChip(
      label: Text(label),
      iconData: Icons.arrow_drop_down,
      onPressed: () {
        // BottomSheetの表示
        showModalBottomSheet<double>(
          context: context,
          builder: (context) => _BottomSheet(
            title: BottomSheetTitleText(i18n.item.common.wishRank),
            initial: wishRank,
            onApply: onApply,
            onReset: onReset,
            onCancel: onCancel,
          ),
        );
      },
      selected: wishRank != null,
      showCheckmark: false,
    );
  }
}

class _BottomSheet extends HookWidget {
  const _BottomSheet({
    this.title,
    this.onApply,
    this.onCancel,
    this.onReset,
    this.initial,
  });

  final Widget? title;
  final ValueChanged<double>? onApply;
  final VoidCallback? onCancel;
  final VoidCallback? onReset;
  final double? initial;

  @override
  Widget build(BuildContext context) {
    final wishRank = useState<double>(initial ?? 0);
    final navigator = Navigator.of(context);

    return BottomSheetColumn(
      title: title,
      children: [
        RatingBar.builder(
          initialRating: wishRank.value,
          allowHalfRating: true,
          itemBuilder: (context, index) => const RatingIcon(),
          onRatingUpdate: (value) => wishRank.value = value,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BottomSheetCancelButton(
              onPressed: () {
                navigator.pop();
                if (onCancel != null) {
                  onCancel!();
                }
              },
            ),
            const Gap(8),
            BottomSheetResetButton(
              onPressed: () {
                navigator.pop();
                if (onReset != null) {
                  onReset!();
                }
              },
            ),
            const Gap(8),
            BottomSheetApplyButton(
              onPressed: () {
                navigator.pop();
                if (onApply != null) {
                  onApply!(wishRank.value);
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}
