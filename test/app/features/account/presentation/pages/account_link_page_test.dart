import 'package:family_wish_list/app/presentation/pages/user/account_link_page.dart';
import 'package:family_wish_list/app/presentation/routes/importer.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../../test_utils/importer.dart';

void main() {
  group('アカウント連携画面', () {
    final testAgent = TestAgent();
    setUp(testAgent.setUp);
    tearDown(testAgent.tearDown);

    final l10n = testAgent.l10n;

    testWidgets('画面表示', (WidgetTester tester) async {
      // 画面表示
      await _pumpPage(tester, testAgent);

      // 検証
      expectAccountLinkPage(tester, testAgent);
    });

    testWidgets('Google Sign In', (WidgetTester tester) async {
      // 画面表示
      await _pumpPage(tester, testAgent);

      // サインイン
      await tester.tap(find.text(l10n.signInWithGoogle));
      await pumpRepeatableOneSec(tester, 10);

      // 画面遷移確認
      // TODO(yakitama5): アイテム一覧画面を作ってから
    });

    testWidgets('Apple Sign In', (WidgetTester tester) async {
      // 画面表示
      await _pumpPage(tester, testAgent);

      // サインイン
      await tester.tap(find.text(l10n.signInWithApple));
      await tester.pumpAndSettle();

      // AppleSignInのモックは対応外のため、検証まで行えない
    });
  });
}

///
/// Expects
///
void expectAccountLinkPage(
  WidgetTester tester,
  TestAgent testAgent,
) {
  final l10n = testAgent.l10n;

  // 表示
  expect(find.byType(AccountLinkPage), findsOneWidget);
  expect(find.text(l10n.signInWithGoogle), findsOneWidget);
  expect(find.text(l10n.signInWithApple), findsOneWidget);
  expect(find.text(l10n.accountLinkDescTitle), findsOneWidget);
  expect(find.text(l10n.accountLinkDescBodyCloudBackup), findsOneWidget);
  expect(find.text(l10n.accountLinkDescBodyMultiDevice), findsOneWidget);
  expect(find.text(l10n.accountLinkDescBodyDataSend), findsOneWidget);
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
    testAgent.mockApp(location: const AccountLinkRouteData().location),
  );
  await tester.pumpAndSettle();
}
