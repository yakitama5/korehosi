import 'package:flutter/material.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
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
    final navigator = Navigator.of(context);

    return BottomSheetColumn(
      title: BottomSheetTitleText(i18n.item.common.wishRank),
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
            BottomSheetCancelButton(onPressed: navigator.pop),
            const Gap(8),
            BottomSheetResetButton(onPressed: () => navigator.pop<double>(-1)),
            const Gap(8),
            BottomSheetApplyButton(
              onPressed: () => Navigator.of(context).pop(wishRank.value),
            ),
          ],
        ),
      ],
    );
  }
}
