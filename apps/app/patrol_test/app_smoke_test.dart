import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest('アプリが起動してFlutter UIを表示する', ($) async {
    await app.main();
    await $.pumpAndSettle();

    expect($(MaterialApp), findsOneWidget);

    // Riverpod 3.0.3 reports a StateError when a loading StreamProvider is
    // disposed by the automatic test teardown. Dispose the app explicitly so
    // that the known teardown-only error does not hide the startup result.
    await $.pumpWidget(const SizedBox.shrink());
    final teardownError = $.tester.takeException();
    expect(
      teardownError?.toString(),
      anyOf(
        isNull,
        contains('was disposed during loading state'),
      ),
    );
  });
}
