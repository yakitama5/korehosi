import 'package:flutter/material.dart';

extension ThemeDataX on ThemeData {
  /// iOS or Macか否か
  bool get isCupertinoPlatform {
    switch (platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return false;
      case TargetPlatform.macOS:
      case TargetPlatform.iOS:
        return true;
    }
  }
}
