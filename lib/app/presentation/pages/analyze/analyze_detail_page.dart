import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'components/purchase_donut_gauge_chart_card.dart';

class AnalyzeDetailPage extends HookConsumerWidget {
  const AnalyzeDetailPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO(yakitama5): ページをダミーで設定
    const pages = [
      PurchaseGaugeChartCard(),
      PurchaseGaugeChartCard(),
      PurchaseGaugeChartCard(),
    ];

    return Scaffold(
      appBar: AppBar(
        // TODO(yakitama5): 多言語化対応
        title: const Text('タイトル'),
      ),
      body: Column(
        children: [
          // TODO(yakitama5): フィルターを作っていく
          const Text('ここがフィルター郡'),
          Expanded(
            child: IntroductionScreen(
              pages: pages
                  .map(
                    (e) => PageViewModel(
                      bodyWidget: e,
                      titleWidget: const SizedBox.shrink(),
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
