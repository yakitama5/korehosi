import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_designsystem/src/theme/model/dynamic_color_support_status.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'core_palette_provider.dart';

part 'dynamic_color_support_provider.g.dart';

@riverpod
DynamicColorSupportStatus dynamicColorSupportProvider(Ref ref) {
  final corePalette = ref.watch(corePaletteProvider).value;
  final isSupport =
      corePalette != null &&
      switch (defaultTargetPlatform) {
        TargetPlatform.iOS || TargetPlatform.macOS => false,
        _ => true,
      };

  return isSupport
      ? DynamicColorSupportStatus.supported
      : DynamicColorSupportStatus.notSupported;
}
