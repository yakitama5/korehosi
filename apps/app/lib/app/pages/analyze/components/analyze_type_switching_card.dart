import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_domain/analyze.dart';

import '../../../routes/importer.dart';
import 'monthly_totals_purchases_chart_card.dart';
import 'purchase_gauge_chart_card.dart';

/// 分析種別に応じて、表示を切り替える`Card`
class AnalyzeTypeSwitchingCard extends HookConsumerWidget {
  const AnalyzeTypeSwitchingCard({
    super.key,
    required this.analyzeType,
    this.enabled = true,
  });

  final AnalyzeType analyzeType;
  final bool enabled;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return switch (analyzeType) {
      AnalyzeType.buyedRate => PurchaseGaugeChartCard(
        onTap: enabled
            ? () => AnalyzeDetailRouteData(index: analyzeType.index).go(context)
            : null,
      ),
      AnalyzeType.monthlySumPrice => MonthlyTotalsPurchasesChartCard(
        onTap: enabled
            ? () => AnalyzeDetailRouteData(index: analyzeType.index).go(context)
            : null,
      ),
    };
  }
}
