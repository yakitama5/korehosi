import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';

import '../../theme/state/app_theme_provider.dart';

/// Brightness指定でThemeをoverrideするWidget
class BrightnessScope extends SingleChildStatelessWidget {
  const BrightnessScope({
    super.key,
    super.child,
    required this.brightness,
  });

  final Brightness brightness;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) => Consumer(
        builder: (context, ref, _) {
          final theme = ref.watch(appThemeProvider(brightness: brightness));

          return Theme(
            data: theme,
            child: child!,
          );
        },
      );
}
