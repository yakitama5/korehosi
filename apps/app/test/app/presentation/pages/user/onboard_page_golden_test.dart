import 'package:alchemist/alchemist.dart';
import 'package:flutter_app/app/pages/user/onboard_page.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../test_utils/src/device_size.dart';
import '../../../../test_utils/src/wrapper.dart';

void main() {
  group('Onboard', () {
    goldenTest(
      'Page1',
      fileName: 'Page1',
      builder: () {
        return GoldenTestGroup(
          children: DeviceSize.values
              .map(
                (device) => GoldenTestScenario(
                  name: device.name,
                  constraints: device.constraints,
                  child: testableWidget(OnboardPage(initialPage: 0)),
                ),
              )
              .toList(),
        );
      },
    );
  });
}
