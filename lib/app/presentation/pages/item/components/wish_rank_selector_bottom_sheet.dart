import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../components/importer.dart';
import '../../../hooks/src/use_l10n.dart';
import 'rating_icon.dart';

class WishRankSelectorBottomSheet extends HookWidget {
  const WishRankSelectorBottomSheet({super.key, required this.initial});

  static Future<double?> show({
    required BuildContext context,
    bool useSafeArea = false,
    double? initial,
  }) =>
      showModalBottomSheet<double>(
        context: context,
        useSafeArea: true,
        builder: (context) => WishRankSelectorBottomSheet(initial: initial),
      );

  final double? initial;

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();
    final wishRank = useState(initial ?? 0);

    return BottomSheetColumn(
      titleData: l10n.wishRank,
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
              onPressed: () => context.pop(wishRank.value),
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
    final l10n = useL10n();

    return TextButton(
      onPressed: () => context.pop(),
      child: Text(l10n.cancel),
    );
  }
}

class _ResetButton extends HookWidget {
  const _ResetButton();

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();

    return TextButton(
      onPressed: () => context.pop<double>(-1),
      child: Text(l10n.reset),
    );
  }
}

class _ApplyButton extends HookWidget {
  const _ApplyButton({required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();

    return FilledButton.tonal(
      onPressed: onPressed,
      child: Text(l10n.apply),
    );
  }
}
