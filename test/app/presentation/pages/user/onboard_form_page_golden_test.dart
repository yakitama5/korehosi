import 'package:family_wish_list/app/presentation/pages/user/onboard_form_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

import '../../../../test_utils/importer.dart';

const _pageLength = 3;

void main() {
  testGoldens('オンボード入力', (WidgetTester tester) async {
    for (var i = 0; i < _pageLength; i++) {
      // `IntroductionScreenState`をGlobalKeyで行う都合上、`multiScreenGolden`を利用
      // Note: https://github.com/eBay/flutter_glove_box/issues/132
      await tester.pumpWidget(
        testableWidget(
          OnboardFormPage(
            initialPage: i,
          ),
        ),
      );
      await multiScreenGolden(tester, 'Page.${i + 1}');
    }
  });
}
