import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:material3_indicators/material3_indicators.dart';
import 'package:packages_designsystem/widgets.dart';

void main() {
  testWidgets('uses the Material 3 expressive loading indicator', (
    tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: ExpressiveLoadingIndicator()),
    );

    expect(find.byType(M3LoadingIndicator), findsOneWidget);
  });

  testWidgets('shows the expressive indicator while refreshing', (
    tester,
  ) async {
    final refresh = Completer<void>();
    var refreshStarted = false;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ExpressiveRefreshIndicator(
            onRefresh: () {
              refreshStarted = true;
              return refresh.future;
            },
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: const [SizedBox(height: 400)],
            ),
          ),
        ),
      ),
    );

    final gesture = await tester.startGesture(
      tester.getCenter(find.byType(ListView)),
    );
    await gesture.moveBy(const Offset(0, 150));
    await tester.pump();
    await gesture.moveBy(const Offset(0, 250));
    await tester.pump();

    expect(find.byType(M3LoadingIndicator), findsOneWidget);

    await gesture.up();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 500));

    expect(refreshStarted, isTrue);

    refresh.complete();
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));

    expect(find.byType(M3LoadingIndicator), findsNothing);
  });
}
