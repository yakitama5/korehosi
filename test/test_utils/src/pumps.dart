import 'package:flutter_test/flutter_test.dart';

Future<void> pumpRepeatableOneSec(WidgetTester tester, int count) async {
  for (var i = 0; i < count; i++) {
    await tester.pump(const Duration(milliseconds: 1000));
  }
}
