import 'dart:async';

import 'package:golden_toolkit/golden_toolkit.dart';

const defaultDevices = [
  Device.phone,
  Device.iphone11,
  Device.tabletLandscape,
];

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  return GoldenToolkit.runWithConfiguration(
    () async {
      await loadAppFonts();
      await testMain();
    },
    config: GoldenToolkitConfiguration(
      defaultDevices: defaultDevices,
      fileNameFactory: (name) {
        return 'goldens/$name.png';
      },
      enableRealShadows: true,
    ),
  );
}
