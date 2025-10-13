import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/widgets.dart';

import 'rating_icon.dart';

class WishRankSelectorBottomSheet extends HookWidget {
  const WishRankSelectorBottomSheet({super.key, required this.initial});

  static Future<double?> show({
    required BuildContext context,
    bool useSafeArea = false,
    double? initial,
  }) => showModalBottomSheet<double>(
    context: context,
    useSafeArea: true,
    builder: (context) => WishRankSelectorBottomSheet(initial: initial),
  );

  final double? initial;

  @override
  Widget build(BuildContext context) {
    final wishRank = useState(initial ?? 0);

    return BottomSheetColumn(
      titleData: i18n.item.common.wishRank,
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
            const _CancelButton(),
            const Gap(8),
            const _ResetButton(),
            const Gap(8),
            _ApplyButton(
              onPressed: () => Navigator.of(context).pop(wishRank.value),
            ),
          ],
        ),
      ],
    );
  }
}

class _CancelButton extends HookWidget {
  const _CancelButton();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.of(context).pop(),
      child: Text(commonI18n.common.cancel),
    );
  }
}

class _ResetButton extends HookWidget {
  const _ResetButton();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.of(context).pop<double>(-1),
      child: Text(commonI18n.common.reset),
    );
  }
}

class _ApplyButton extends HookWidget {
  const _ApplyButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      onPressed: onPressed,
      child: Text(commonI18n.common.apply),
    );
  }
}
