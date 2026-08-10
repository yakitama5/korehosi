import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/user/onboard_page.dart';
import 'package:flutter_app/app/pages/user/profile_page.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/user.dart';
import 'package:packages_domain/user.dart';

import '../../../../test_utils/src/wrapper.dart';

void main() {
  testWidgets('profile shows the registered age group as read-only', (
    tester,
  ) async {
    final user = User(
      id: UserId('user'),
      ageGroup: AgeGroup.child,
      name: 'User',
      createdAt: DateTime(2026),
      updatedAt: DateTime(2026),
    );

    await tester.pumpWidget(
      ProviderScope(
        overrides: [authUserProvider.overrideWith((ref) => user)],
        child: testableWidget(const ProfilePage()),
      ),
    );
    await tester.pumpAndSettle();

    final buttonFinder = find.byType(SegmentedButton<AgeGroup>);
    var button = tester.widget<SegmentedButton<AgeGroup>>(buttonFinder);
    expect(button.onSelectionChanged, isNull);
    expect(button.selected, {AgeGroup.child});
    expect(find.text('年齢層は登録後に変更できません'), findsOneWidget);

    await tester.tap(
      find.descendant(of: buttonFinder, matching: find.text('おとな')),
    );
    await tester.pump();

    button = tester.widget<SegmentedButton<AgeGroup>>(buttonFinder);
    expect(button.selected, {AgeGroup.child});
  });

  testWidgets('onboarding still allows age group selection', (tester) async {
    await tester.pumpWidget(testableWidget(OnboardPage(initialPage: 1)));
    await tester.pumpAndSettle();

    final buttonFinder = find.byType(SegmentedButton<AgeGroup>);
    var button = tester.widget<SegmentedButton<AgeGroup>>(buttonFinder);
    expect(button.onSelectionChanged, isNotNull);

    await tester.tap(
      find.descendant(of: buttonFinder, matching: find.text('おとな')),
    );
    await tester.pump();

    button = tester.widget<SegmentedButton<AgeGroup>>(buttonFinder);
    expect(button.selected, {AgeGroup.adult});
  });
}
