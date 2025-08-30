import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../domain/analyze/value_object/analyze_typs.dart';
import 'components/analyze_type_switching_card.dart';
import 'components/buyer_name_filter_chip.dart';
import 'components/wanter_name_filter_chip.dart';

class AnalyzeDetailPage extends HookConsumerWidget {
  const AnalyzeDetailPage({
    super.key,
    int? initialIndex,
  }) : _initialIndex = initialIndex ?? 0;

  final int _initialIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                BuyerNameFilterChip(),
                Gap(8),
                WanterNameFilterChip(),
              ],
            ),
          ),
          Expanded(
            child: IntroductionScreen(
              initialPage: _initialIndex,
              pages: AnalyzeType.values
                  .map(
                    (e) => PageViewModel(
                      decoration:
                          const PageDecoration(titlePadding: EdgeInsets.zero),
                      titleWidget: const SizedBox.shrink(),
                      bodyWidget: AnalyzeTypeSwitchingCard(
                        analyzeType: e,
                        // 画面遷移は行わないので`disabled`
                        enabled: false,
                      ),
                    ),
                  )
                  .toList(),
              showNextButton: false,
              showDoneButton: false,
            ),
          ),
        ],
      ),
    );
  }
}
