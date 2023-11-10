import 'package:family_wish_list/app/presentation/components/importer.dart';
import 'package:family_wish_list/app/presentation/routes/importer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../test_utils/importer.dart';
import '../../../account/presentation/pages/account_link_page_test.dart';
import 'onboard_form_page_test.dart';

void main() {
  group('初回表示画面', () {
    final testAgent = TestAgent();
    setUp(testAgent.setUp);
    tearDown(testAgent.tearDown);

    final l10n = testAgent.l10n;

    testWidgets('画面表示', (WidgetTester tester) async {
      // 画面表示
      await _pumpPage(tester, testAgent);

      // 検証
      expectOnboardStartPage(tester, testAgent);
    });

    testWidgets('はじめるボタン押下', (WidgetTester tester) async {
      // 画面表示
      await _pumpPage(tester, testAgent);

      // はじめる押下
      await tester.tap(find.text(l10n.start));
      await tester.pumpAndSettle();

      // 画面遷移確認
      expectOnboardFormPageStartIntroduction(tester, testAgent);
    });

    testWidgets('アカウント連携ボタン押下', (WidgetTester tester) async {
      // 画面表示
      await _pumpPage(tester, testAgent);

      // アカウント連携押下
      await tester.tap(find.text(l10n.accountLink));
      await tester.pumpAndSettle();

      // 画面遷移確認
      expectAccountLinkPage(tester, testAgent);
    });

    testWidgets('使い方リンク押下', (WidgetTester tester) async {
      // 画面表示
      await _pumpPage(tester, testAgent);

      // アカウント連携押下
      await tester.tap(find.text(l10n.howToUse));
      await tester.pumpAndSettle();

      // WebViewのため検証はなし
    });

    testWidgets('問い合わせリンク押下', (WidgetTester tester) async {
      // 画面表示
      await _pumpPage(tester, testAgent);

      // アカウント連携押下
      await tester.tap(find.text(l10n.contactUs));
      await tester.pumpAndSettle();

      // WebViewのため検証はなし
    });

    testWidgets('プライバシーポリシーリンク押下', (WidgetTester tester) async {
      // 画面表示
      await _pumpPage(tester, testAgent);

      // アカウント連携押下
      await tester.tap(find.text(l10n.privacyPolicy));
      await tester.pumpAndSettle();

      // WebViewのため検証はなし
    });
  });
}

///
/// Expects
///
void expectOnboardStartPage(
  WidgetTester tester,
  TestAgent testAgent,
) {
  final l10n = testAgent.l10n;

  // 表示
  expect(find.widgetWithText(FilledButton, l10n.start), findsOneWidget);
  expect(
    find.widgetWithText(OutlinedButton, l10n.accountLink),
    findsOneWidget,
  );
  expect(find.widgetWithText(UrlLink, l10n.howToUse), findsOneWidget);
  expect(find.widgetWithText(UrlLink, l10n.contactUs), findsOneWidget);
  expect(find.widgetWithText(UrlLink, l10n.privacyPolicy), findsOneWidget);
}

///
/// Pumps
///
Future<void> _pumpPage(
  WidgetTester tester,
  TestAgent testAgent,
) async {
  await tester.binding.setSurfaceSize(TestAgent.deviceSize);
  await tester.pumpWidget(
    testAgent.mockApp(location: const OnboardStartRouteData().location),
  );
  await tester.pumpAndSettle();
}
