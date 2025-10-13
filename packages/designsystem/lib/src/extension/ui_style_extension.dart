import 'package:flutter/material.dart';
import 'package:packages_domain/designsystem.dart';

extension UIStyleX on UIStyle {
  TargetPlatform? get platform => switch (this) {
    UIStyle.system => null,
    UIStyle.android => TargetPlatform.android,
    UIStyle.ios => TargetPlatform.iOS,
  };

  IconData get iconData => switch (this) {
    UIStyle.system => Icons.settings,
    UIStyle.android => Icons.android,
    UIStyle.ios => Icons.apple,
  };
}
