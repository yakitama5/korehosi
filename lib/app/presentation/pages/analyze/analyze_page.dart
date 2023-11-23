import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/state/locale_provider.dart';
import '../../components/importer.dart';
import '../../routes/src/routes_data.dart';
import 'components/purchase_donut_gauge_chart_card.dart';
import 'components/sum_price_chart_card.dart';

/// 「ふりかえり」画面
class AnalyzePage extends HookConsumerWidget {
  const AnalyzePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = ref.watch(l10nProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.analyze),
        centerTitle: true,
      ),
      body: SafeArea(
        child: PagePadding(
          child: SingleChildScrollView(
            child: Column(
              children: [
                PurchaseGaugeChartCard(
                  onTap: () => const AnalyzeDetailRouteData().go(context),
                ),
                const Gap(16),
                SumPriceChartCard(
                  onTap: () => const AnalyzeDetailRouteData().go(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
