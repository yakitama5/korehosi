import 'dart:async';

import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/presentation/theme/src/color_schemes.g.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  // ignore: do_not_use_environment
  const isRunningInCi = bool.fromEnvironment('CI', defaultValue: false);

  return AlchemistConfig.runWithConfig(
    config: AlchemistConfig(
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: lightColorScheme,
        fontFamily: 'Murecho',
      ),
      platformGoldensConfig: const PlatformGoldensConfig(
        enabled: !isRunningInCi,
        renderShadows: !isRunningInCi,
      ),
    ),
    run: testMain,
  );
}
