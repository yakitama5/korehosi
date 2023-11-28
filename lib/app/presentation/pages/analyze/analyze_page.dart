import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/state/locale_provider.dart';
import '../../../domain/analyze/value_object/analyze_typs.dart';
import '../../components/importer.dart';
import 'components/analyze_type_switching_card.dart';

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
          child: ListView.separated(
            itemBuilder: (_, i) =>
                AnalyzeTypeSwitchingCard(analyzeType: AnalyzeType.values[i]),
            separatorBuilder: (_, __) => const Gap(16),
            itemCount: AnalyzeType.values.length,
          ),
        ),
      ),
    );
  }
}
