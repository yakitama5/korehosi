import 'package:family_wish_list/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

import '../../../../application/state/locale_provider.dart';

class NotGroupView extends HookConsumerWidget {
  const NotGroupView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final l10n = ref.watch(l10nProvider);

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Gap(8),
          Lottie.asset(
            Assets.lottie.group,
            fit: BoxFit.fill,
            height: 160,
            delegates: LottieDelegates(
              values: [
                ValueDelegate.strokeColor(
                  const ['**', 'Stroke 1', '**'],
                  value: colorScheme.primary,
                ),
              ],
            ),
          ),
          Text(
            l10n.notJoinedGroupMessage,
            style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Gap(40),
        ],
      ),
    );
  }
}
