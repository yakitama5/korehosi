import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'components/buyer_name_filter_chip.dart';
import 'components/purchase_donut_gauge_chart_card.dart';
import 'components/sum_price_chart_card.dart';
import 'components/wanter_name_filter_chip.dart';

class AnalyzeDetailPage extends HookConsumerWidget {
  const AnalyzeDetailPage({super.key, this.initialIndex});

  final int? initialIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO(yakitama5): ページをダミーで設定
    const pages = [
      PurchaseGaugeChartCard(),
      SumPriceChartCard(),
    ];

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                // TODO(yakitama5): フィルターを作っていく
                BuyerNameFilterChip(),
                Gap(8),
                WanterNameFilterChip(),
              ],
            ),
          ),
          Expanded(
            child: IntroductionScreen(
              initialPage: initialIndex ?? 0,
              pages: pages
                  .map(
                    (e) => PageViewModel(
                      decoration:
                          const PageDecoration(titlePadding: EdgeInsets.zero),
                      titleWidget: const SizedBox.shrink(),
                      bodyWidget: e,
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
