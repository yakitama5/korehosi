import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../application/state/locale_provider.dart';
import '../../../components/importer.dart';
import 'rating_icon.dart';

final _wishRankProvider = StateProvider<double?>((ref) {
  throw UnimplementedError();
});

class WishRankSelectorBottomSheet extends HookConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return ProviderScope(
      overrides: [_wishRankProvider.overrideWith((ref) => initial)],
      child: BottomSheetColumn(
        titleData: l10n.wishRank,
        children: const [
          _RatingBar(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _CancelButton(),
              Gap(8),
              _ResetButton(),
              Gap(8),
              _ApplyButton(),
            ],
          ),
        ],
      ),
    );
  }
}

class _RatingBar extends HookConsumerWidget {
  const _RatingBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initial = ref.watch(_wishRankProvider);

    return RatingBar.builder(
      initialRating: initial ?? 0,
      allowHalfRating: true,
      itemBuilder: (context, index) => const RatingIcon(),
      onRatingUpdate: (value) =>
          ref.read(_wishRankProvider.notifier).update((state) => value),
    );
  }
}

class _CancelButton extends HookConsumerWidget {
  const _CancelButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(l10n.cancel),
    );
  }
}

class _ResetButton extends HookConsumerWidget {
  const _ResetButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return TextButton(
      onPressed: () {
        // ignore: prefer_int_literals
        Navigator.pop<double>(context, -1);
      },
      child: Text(l10n.reset),
    );
  }
}

class _ApplyButton extends HookConsumerWidget {
  const _ApplyButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return FilledButton.tonal(
      onPressed: () {
        final result = ref.read(_wishRankProvider);
        Navigator.pop(context, result);
      },
      child: Text(l10n.apply),
    );
  }
}
