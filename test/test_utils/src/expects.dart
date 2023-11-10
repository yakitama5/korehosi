import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_agent.dart';

void expectNavigationBarCurrentWishList(
  WidgetTester tester,
  TestAgent testAgent,
) {
  final l10n = testAgent.l10n;

  // 表示
  expect(find.byType(NavigationDestination), findsNWidgets(3));
  expect(
    find.widgetWithText(NavigationDestination, l10n.wishList),
    findsOneWidget,
  );
  expect(
    find.widgetWithIcon(NavigationDestination, Icons.shopping_bag),
    findsOneWidget,
  );
  expect(
    find.widgetWithText(NavigationDestination, l10n.analyze),
    findsOneWidget,
  );
  expect(
    find.widgetWithIcon(NavigationDestination, Icons.analytics_outlined),
    findsOneWidget,
  );
  expect(
    find.widgetWithText(NavigationDestination, l10n.settings),
    findsOneWidget,
  );
  expect(
    find.widgetWithIcon(NavigationDestination, Icons.settings_outlined),
    findsOneWidget,
  );
}

void expectNavigationBarCurrentAnalyze(
  WidgetTester tester,
  TestAgent testAgent,
) {
  final l10n = testAgent.l10n;

  // 表示
  expect(find.byType(NavigationDestination), findsNWidgets(3));
  expect(
    find.widgetWithText(NavigationDestination, l10n.wishList),
    findsOneWidget,
  );
  expect(
    find.widgetWithIcon(NavigationDestination, Icons.shopping_bag_outlined),
    findsOneWidget,
  );
  expect(
    find.widgetWithText(NavigationDestination, l10n.analyze),
    findsOneWidget,
  );
  expect(
    find.widgetWithIcon(NavigationDestination, Icons.analytics),
    findsOneWidget,
  );
  expect(
    find.widgetWithText(NavigationDestination, l10n.settings),
    findsOneWidget,
  );
  expect(
    find.widgetWithIcon(NavigationDestination, Icons.settings_outlined),
    findsOneWidget,
  );
}

void expectNavigationBarCurrentSettings(
  WidgetTester tester,
  TestAgent testAgent,
) {
  final l10n = testAgent.l10n;

  // 表示
  expect(find.byType(NavigationDestination), findsNWidgets(3));
  expect(
    find.widgetWithText(NavigationDestination, l10n.wishList),
    findsOneWidget,
  );
  expect(
    find.widgetWithIcon(NavigationDestination, Icons.shopping_bag_outlined),
    findsOneWidget,
  );
  expect(
    find.widgetWithText(NavigationDestination, l10n.analyze),
    findsOneWidget,
  );
  expect(
    find.widgetWithIcon(NavigationDestination, Icons.analytics_outlined),
    findsOneWidget,
  );
  expect(
    find.widgetWithText(NavigationDestination, l10n.settings),
    findsOneWidget,
  );
  expect(
    find.widgetWithIcon(NavigationDestination, Icons.settings),
    findsOneWidget,
  );
}
