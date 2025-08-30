import 'package:flutter/material.dart';
import 'package:flutter_app/gen/assets.gen.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

import '../../../hooks/importer.dart';

class NotGroupView extends HookWidget {
  const NotGroupView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = useTextTheme();
    final colorScheme = useColorScheme();

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
                ValueDelegate.strokeColor(const [
                  '**',
                  'Stroke 1',
                  '**',
                ], value: colorScheme.primary),
              ],
            ),
          ),
          Text(
            i18n.app.notJoinedGroupMessage,
            style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Gap(40),
        ],
      ),
    );
  }
}
