import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gauge_indicator/gauge_indicator.dart';

class GaugeChart extends HookWidget {
  const GaugeChart({
    super.key,
    required this.value,
    this.radius = 96,
    this.thickness = 20,
    this.color,
    this.emptyColor,
    this.minValue = 0,
    this.maxValue = 100,
  });

  final double value;
  final double radius;
  final Color? color;
  final Color? emptyColor;
  final double thickness;
  final double minValue;
  final double maxValue;

  @override
  Widget build(BuildContext context) {
    // HACK(yakitama5): fl_chartで対応されたら変更
    // https://github.com/imaNNeo/fl_chart/issues/199

    final cs = Theme.of(context).colorScheme;

    return RotatedBox(
      quarterTurns: 2,
      child: AnimatedRadialGauge(
        duration: const Duration(seconds: 1),
        curve: Curves.ease,
        radius: radius,
        value: value,
        axis: GaugeAxis(
          max: maxValue,
          degrees: 360,
          pointer: const GaugePointer.circle(radius: 0, color: Colors.white),
          style: GaugeAxisStyle(thickness: thickness),
          progressBar: GaugeProgressBar.rounded(
            // 値が最小値の場合表示が崩れるので、透明色を設定して表示を調整する
            color: value <= minValue ? Colors.transparent : color ?? cs.primary,
          ),
          segments: [
            GaugeSegment(
              from: minValue,
              to: maxValue,
              color: emptyColor ?? cs.surfaceContainer,
            ),
          ],
        ),
      ),
    );
  }
}
