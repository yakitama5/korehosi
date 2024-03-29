import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

import '../../../domain/analyze/value_object/analyze_typs.dart';
import '../../components/importer.dart';
import '../../hooks/importer.dart';
import 'components/analyze_type_switching_card.dart';

/// 「ふりかえり」画面
class AnalyzePage extends HookWidget {
  const AnalyzePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = useL10n();

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
