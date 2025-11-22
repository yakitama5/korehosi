import 'dart:async';

import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:packages_designsystem/theme.dart';

import 'test_utils/src/prepare_golden_file_comparator_with_threshold.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  const isRunningInCi = bool.fromEnvironment('CI');

  // CIの場合だけ誤差をある程度許容する
  if (isRunningInCi) {
    prepareGoldenFileComparatorWithThreshold();
  }

  return AlchemistConfig.runWithConfig(
    config: AlchemistConfig(
      ciGoldensConfig: const CiGoldensConfig(
        enabled: isRunningInCi,
      ),
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: MaterialTheme.lightScheme(),
        fontFamily: 'Murecho',
      ),
      platformGoldensConfig: const PlatformGoldensConfig(),
    ),
    run: testMain,
  );
}
