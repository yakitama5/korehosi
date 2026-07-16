import 'package:flutter/material.dart';
import 'package:material3_indicators/material3_indicators.dart';

/// Material 3 Expressive の形状モーフィングローダー。
class ExpressiveLoadingIndicator extends StatelessWidget {
  const ExpressiveLoadingIndicator({
    super.key,
    this.size = 36,
    this.contained = false,
    this.containerSize = 48,
    this.semanticsLabel,
  });

  final double size;
  final bool contained;
  final double containerSize;
  final String? semanticsLabel;

  @override
  Widget build(BuildContext context) => M3LoadingIndicator(
    size: size,
    contained: contained,
    containerSize: containerSize,
    semanticsLabel: semanticsLabel,
  );
}
