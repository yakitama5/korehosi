import 'package:flutter/material.dart';

class SvgOriginPrimaryStyle extends ThemeExtension<SvgOriginPrimaryStyle> {
  const SvgOriginPrimaryStyle({
    required this.primary,
    required this.secondary,
    required this.primaryContainer,
  });

  final Color primary;
  final Color secondary;
  final Color primaryContainer;

  @override
  ThemeExtension<SvgOriginPrimaryStyle> copyWith({
    Color? primary,
    Color? secondary,
    Color? primaryContainer,
  }) =>
      SvgOriginPrimaryStyle(
        primary: primary ?? this.primary,
        secondary: secondary ?? this.secondary,
        primaryContainer: primaryContainer ?? this.primaryContainer,
      );

  @override
  ThemeExtension<SvgOriginPrimaryStyle> lerp(
    covariant ThemeExtension<SvgOriginPrimaryStyle>? other,
    double t,
  ) {
    if (other is! SvgOriginPrimaryStyle) {
      return this;
    }

    return copyWith(
      primary: Color.lerp(primary, other.primary, t),
      secondary: Color.lerp(secondary, other.secondary, t),
      primaryContainer: Color.lerp(primaryContainer, other.primaryContainer, t),
    );
  }
}
