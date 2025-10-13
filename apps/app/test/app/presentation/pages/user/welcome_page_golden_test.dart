import 'package:alchemist/alchemist.dart';
import 'package:flutter_app/app/pages/user/welcome_page.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../test_utils/importer.dart';
import '../../../../test_utils/src/device_size.dart';
import '../../../../test_utils/src/prepare_golden_file_comparator_with_threshold.dart';

void main() {
  prepareGoldenFileComparatorWithThreshold();

  group('Welcome', () {
    goldenTest(
      'Initial',
      fileName: 'Initial',
      builder: () {
        return GoldenTestGroup(
          children: DeviceSize.values
              .map(
                (device) => GoldenTestScenario(
                  name: device.name,
                  constraints: device.constraints,
                  child: testableWidget(const WelcomePage()),
                ),
              )
              .toList(),
        );
      },
    );
  });
}
