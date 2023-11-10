import 'package:family_wish_list/app/application/config/user_config.dart';
import 'package:family_wish_list/app/application/state/introduction_screen_key_provider.dart';
import 'package:family_wish_list/app/application/usecase/user/state/user_form_provider.dart';
import 'package:family_wish_list/app/domain/user/value_object/age_group.dart';
import 'package:family_wish_list/app/infrastructure/firebase/authentication/state/firebase_auth.dart';
import 'package:family_wish_list/app/presentation/components/importer.dart';
import 'package:family_wish_list/app/presentation/pages/item/items_page.dart';
import 'package:family_wish_list/app/presentation/pages/user/onboard_form_page.dart';
import 'package:family_wish_list/app/presentation/routes/importer.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../test_utils/importer.dart';

void main() {
  group('オンボード(説明画面)', () {
    final testAgent = TestAgent();
    setUp(testAgent.setUp);
    tearDown(testAgent.tearDown);

    final l10n = testAgent.l10n;

    testWidgets('画面表示', (WidgetTester tester) async {
      await _pumpDescriptionPage(tester, testAgent);

      // 検証
      expectOnboardFormPageStartIntroduction(tester, testAgent);
    });

    testWidgets('ボディの「次へ」ボタン押下', (WidgetTester tester) async {
      await _pumpDescriptionPage(tester, testAgent);

      // タップ
      await tester.tap(find.widgetWithText(FilledButton, l10n.next));
      await tester.pumpAndSettle();

      // 次の画面が表示されていることの確認
      expectOnboardFormPageProfileIntroduction(tester, testAgent);
    });

    testWidgets('フッターの「次へ」ボタン押下', (WidgetTester tester) async {
      await _pumpDescriptionPage(tester, testAgent);

      // タップ
      await tester.tap(find.widgetWithText(TextButton, l10n.next));
      await tester.pumpAndSettle();

      // 次の画面が表示されていることの確認
      expectOnboardFormPageProfileIntroduction(tester, testAgent);
    });
  });

  group('オンボード(プロフィール画面)', () {
    final testAgent = TestAgent();
    setUp(testAgent.setUp);
    tearDown(testAgent.tearDown);

    final l10n = testAgent.l10n;

    testWidgets('画面表示', (WidgetTester tester) async {
      await _pumpProfilePage(tester, testAgent);

      // 検証
      expectOnboardFormPageProfileIntroduction(tester, testAgent);
    });

    testWidgets('入力内容の変更', (WidgetTester tester) async {
      await _pumpProfilePage(tester, testAgent);

      // 操作
      const inputText = 'サンプル 太郎';
      // await tester.enterText(find.byKey(onboardWidgetNameKey), inputText);
      await tester.tap(find.text(AgeGroup.adult.getLocaleName(l10n)));
      await tester.pumpAndSettle(const Duration(milliseconds: 300));

      // 状態
      expect(_nameValue(tester), inputText);
      expect(_ageGroupValue(tester), AgeGroup.adult);
    });

    testWidgets('ボディの「次へ」ボタン押下', (WidgetTester tester) async {
      await _pumpProfilePage(tester, testAgent);

      // タップ
      await tester.tap(find.widgetWithText(FilledButton, l10n.next));
      await tester.pumpAndSettle();

      // 次の画面が表示されていることの確認
      expectOnboardFormPageConfirmIntroduction(tester, testAgent);
    });

    testWidgets('フッターの「次へ」ボタン押下', (WidgetTester tester) async {
      await _pumpProfilePage(tester, testAgent);

      // タップ
      await tester.tap(find.widgetWithText(TextButton, l10n.next));
      await tester.pumpAndSettle();

      // 次の画面が表示されていることの確認
      expectOnboardFormPageConfirmIntroduction(tester, testAgent);
    });

    testWidgets('フッターの「戻る」ボタン押下', (WidgetTester tester) async {
      await _pumpProfilePage(tester, testAgent);

      // タップ
      await tester.tap(find.widgetWithText(TextButton, l10n.back));
      await tester.pumpAndSettle();

      // 次の画面が表示されていることの確認
      expectOnboardFormPageStartIntroduction(tester, testAgent);
    });
  });

  group('オンボード(確認画面)', () {
    final testAgent = TestAgent();
    setUp(testAgent.setUp);
    tearDown(testAgent.tearDown);

    final l10n = testAgent.l10n;

    testWidgets('画面表示', (WidgetTester tester) async {
      await _pumpConfirmPage(tester, testAgent);

      // 検証
      expectOnboardFormPageConfirmIntroduction(tester, testAgent);
    });

    testWidgets('ボディの「はじめる」ボタン押下', (WidgetTester tester) async {
      await _pumpConfirmPage(tester, testAgent);

      // タップ
      await tester.tap(find.widgetWithText(FilledButton, l10n.start));
      await tester.idle();
      await pumpRepeatableOneSec(tester, 10);

      // 画面遷移確認
      expect(find.byType(ItemsPage), findsOneWidget);
    });

    testWidgets('フッターの「はじめる」ボタン押下', (WidgetTester tester) async {
      await _pumpConfirmPage(tester, testAgent);

      // タップ
      await tester.tap(find.widgetWithText(TextButton, l10n.start));
      await tester.idle();
      await pumpRepeatableOneSec(tester, 10);

      // 画面遷移確認
      expect(find.byType(ItemsPage), findsOneWidget);
    });

    testWidgets('ログイン済で始めるケース', (WidgetTester tester) async {
      final mockUser = MockUser(uid: 'mockUser', isAnonymous: true);
      final auth = MockFirebaseAuth(mockUser: mockUser, signedIn: true);
      await _pumpConfirmPage(
        tester,
        testAgent,
        overrides: [firebaseAuthProvider.overrideWith((ref) => auth)],
      );

      // タップ
      await tester.tap(find.widgetWithText(FilledButton, l10n.start));
      await tester.idle();
      await pumpRepeatableOneSec(tester, 10);

      // 画面遷移確認
      expect(find.byType(ItemsPage), findsOneWidget);
    });
  });
}

///
/// Expects
///
void expectOnboardFormPageStartIntroduction(
  WidgetTester tester,
  TestAgent testAgent,
) {
  final l10n = testAgent.l10n;

  // 表示
  expect(find.widgetWithText(FilledButton, l10n.next), findsOneWidget);
  expect(find.text(l10n.onboardStartTitle), findsOneWidget);
  expect(find.text(l10n.onboardStartMessage), findsOneWidget);

  // フッター
  expect(find.widgetWithText(TextButton, l10n.next), findsOneWidget);
  expect(find.widgetWithText(TextButton, l10n.back), findsNothing);

  // 状態
  expect(_introductionPageKey(tester), 0);
}

void expectOnboardFormPageProfileIntroduction(
  WidgetTester tester,
  TestAgent testAgent,
) {
  final l10n = testAgent.l10n;

  // 表示
  expect(find.text(l10n.questionAgeGroup), findsOneWidget);
  expect(find.byType(ReactiveOutlinedTextField<String>), findsOneWidget);
  expect(find.byType(ReactiveSegmentedButton), findsOneWidget);
  expect(find.widgetWithText(FilledButton, l10n.next), findsOneWidget);

  // フッター
  expect(find.widgetWithText(TextButton, l10n.next), findsOneWidget);
  expect(find.widgetWithText(TextButton, l10n.back), findsOneWidget);

  // 状態
  expect(_nameValue(tester), isNull);
  expect(_ageGroupValue(tester), AgeGroup.child);
  expect(_introductionPageKey(tester), 1);
}

void expectOnboardFormPageConfirmIntroduction(
  WidgetTester tester,
  TestAgent testAgent,
) {
  final l10n = testAgent.l10n;

  // 表示
  expect(find.widgetWithText(FilledButton, l10n.start), findsOneWidget);
  expect(find.widgetWithText(TextButton, l10n.start), findsOneWidget);
  expect(find.widgetWithText(TextButton, l10n.back), findsOneWidget);
  expect(find.widgetWithText(TextButton, l10n.next), findsNothing);

  // 状態
  expect(_introductionPageKey(tester), 2);
}

///
/// Pumps
///
Future<void> _pumpDescriptionPage(
  WidgetTester tester,
  TestAgent testAgent, {
  List<Override>? overrides,
}) async {
  await tester.binding.setSurfaceSize(TestAgent.deviceSize);
  await tester.pumpWidget(
    testAgent.mockApp(
      location: const OnboardFormRouteData().location,
      overrides: overrides,
    ),
  );
  await tester.pumpAndSettle();
}

Future<void> _pumpProfilePage(
  WidgetTester tester,
  TestAgent testAgent, {
  List<Override>? overrides,
}) async {
  await _pumpDescriptionPage(tester, testAgent, overrides: overrides);

  // タップ
  await tester.tap(find.widgetWithText(FilledButton, testAgent.l10n.next));
  await tester.pumpAndSettle();
}

Future<void> _pumpConfirmPage(
  WidgetTester tester,
  TestAgent testAgent, {
  String? name,
  AgeGroup? ageGroup,
  List<Override>? overrides,
}) async {
  await _pumpProfilePage(tester, testAgent, overrides: overrides);

  // 入力
  if (name != null) {
    // await tester.enterText(find.byKey(onboardWidgetNameKey), name);
  }
  if (ageGroup != null) {
    await tester.tap(find.text(ageGroup.getLocaleName(testAgent.l10n)));
  }

  // タップ
  await tester.tap(find.widgetWithText(FilledButton, testAgent.l10n.next));
  await tester.pumpAndSettle();
}

///
/// Variables
///

int? _introductionPageKey(WidgetTester tester) {
  final container = _providerContainer(tester);
  final key = container.read(introductionScreenKeyProvider);
  return key.currentState?.getCurrentPage();
}

String? _nameValue(WidgetTester tester) {
  final container = _providerContainer(tester);
  final form = container.read(userFormProvider).value;
  return form?.control(userConfig.nameKey).value as String?;
}

AgeGroup _ageGroupValue(WidgetTester tester) {
  final container = _providerContainer(tester);
  final form = container.read(userFormProvider).value;
  return form?.control(userConfig.ageGroupKey).value as AgeGroup;
}

ProviderContainer _providerContainer(WidgetTester tester) {
  final context = tester.element(find.byType(OnboardFormPage));
  return ProviderScope.containerOf(context);
}
