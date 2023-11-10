import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../application/state/locale_provider.dart';
import '../../theme/importer.dart';

class GaugeChart extends HookConsumerWidget {
  const GaugeChart({
    super.key,
    required this.value,
    this.radius = 96,
    this.color,
  });

  final double value;
  final double radius;
  final Color? color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // HACK(yakitama5): fl_chartで対応されたら変更
    // https://github.com/imaNNeo/fl_chart/issues/199

    final l10n = ref.watch(l10nProvider);
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Stack(
      alignment: Alignment.center,
      children: [
        RotatedBox(
          quarterTurns: 2,
          child: AnimatedRadialGauge(
            duration: const Duration(seconds: 1),
            curve: Curves.ease,
            radius: radius,
            value: value,
            axis: GaugeAxis(
              max: 100,
              degrees: 360,
              pointer:
                  const GaugePointer.circle(radius: 0, color: Colors.white),
              progressBar: GaugeProgressBar.rounded(
                // 値が0以下の場合表示が崩れるので、透明色を設定して表示を調整する
                color: value <= 0
                    ? Colors.transparent
                    : color ?? colorScheme.primary,
              ),
              segments: [
                GaugeSegment(
                  from: 0,
                  to: 100,
                  color: colorScheme.surfaceContainer,
                ),
              ],
            ),
          ),
        ),
        Text(
          l10n.formatPercent(value.toStringAsFixed(0)),
          style: textTheme.titleLarge,
        ),
      ],
    );
  }
}
