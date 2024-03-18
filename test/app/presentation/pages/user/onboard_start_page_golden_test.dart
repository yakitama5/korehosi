import 'package:family_wish_list/app/presentation/pages/user/onboard_start_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../../../test_utils/importer.dart';

void main() {
  testGoldens('ウェルカムページ', (WidgetTester tester) async {
    final builder = DeviceBuilder()
      ..addScenario(
        widget: testableWidget(const OnboardStartPage()),
      );

    await tester.pumpDeviceBuilder(builder);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'OnboardStartPage');
  });
}
