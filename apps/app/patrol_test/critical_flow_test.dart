import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infrastructure_firebase/src/common/state/firebase_functions_provider.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest('初回登録からほしいものの作成・編集・削除まで完了できる', ($) async {
    expect(
      const bool.fromEnvironment('useFirebaseEmulators'),
      isTrue,
      reason:
          'The critical flow writes test data and must use Firebase emulators.',
    );
    // Text selectors must not depend on the CI simulator's system language.
    // AppInitializer reads the device locale during app.main().
    final platformDispatcher = $.tester.platformDispatcher
      ..localeTestValue = const Locale('ja')
      ..localesTestValue = const [Locale('ja')];
    addTearDown(() {
      platformDispatcher
        ..clearLocaleTestValue()
        ..clearLocalesTestValue();
    });
    await app.main();
    // Inspect the callable actually used by repositories, without invoking a
    // handler that requires App Check or may contact external services.
    final container = ProviderContainer();
    addTearDown(container.dispose);
    final callable = container
        .read(firebaseFunctionsProvider)
        .httpsCallable('v2JoinGroup');
    const hostOverride = String.fromEnvironment('firebaseEmulatorHost');
    final host = hostOverride.isNotEmpty
        ? hostOverride
        : defaultTargetPlatform == TargetPlatform.android
        ? '10.0.2.2'
        : 'localhost';
    // Patrol tests live outside test/, but use the SDK's testing seam to
    // verify emulator routing without making a network request.
    // ignore: invalid_use_of_visible_for_testing_member
    final delegate = callable.delegate;
    expect(delegate.origin, 'http://$host:5001');
    expect(delegate.functions.region, 'asia-northeast1');

    // Firebase Auth persists credentials in the iOS Keychain even when the app
    // is uninstalled, so always begin the critical flow signed out.
    await FirebaseAuth.instance.signOut();
    await $.pumpAndSettle(
      timeout: const Duration(seconds: 30),
    );

    // A clean auth emulator can route either through Welcome or directly to
    // onboarding, depending on when anonymous sign-in completes.
    if ($('はじめる').evaluate().isNotEmpty) {
      await $('はじめる').tap();
    }
    await $(FilledButton).first.waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );
    await $(FilledButton).first.tap();
    await $(TextField).first.waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );
    await $(TextField).first.enterText('E2Eユーザー');
    await $(FilledButton).first.tap();
    final signUpButton = $(find.widgetWithText(FilledButton, 'はじめる'));
    await signUpButton.waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );
    await signUpButton.tap();
    await $('ほしいものを追加').waitUntilVisible(
      // The first emulator-backed transaction is slower on a cold CI runner.
      timeout: const Duration(seconds: 90),
    );

    expect($('ほしいもの'), findsWidgets);
    await $('ほしいものを追加').tap();
    await $(TextField).first.waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );
    await $('保存').tap();
    await $('必須項目を入力して下さい').waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );
    expect($('保存'), findsOneWidget);
    await $(TextField).first.enterText('E2Eテスト商品');
    await $('保存').tap();
    await $('E2Eテスト商品').waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );
    expect($('E2Eテスト商品'), findsWidgets);

    await $.platform.mobile.pressHome();
    await $.platform.mobile.openApp();
    await $('E2Eテスト商品').waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );
    expect($('E2Eテスト商品'), findsWidgets);

    await $('E2Eテスト商品').first.tap();
    await $(Icons.edit).waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );
    await $(Icons.edit).tap();
    await $(TextField).first.waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );
    await $(TextField).first.enterText('E2E編集済み商品');
    await $('保存').tap();
    await $('E2E編集済み商品').waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );
    expect($('E2E編集済み商品'), findsWidgets);

    await $(Icons.edit).waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );
    await $(Icons.edit).tap();
    await $(Icons.delete).waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );
    await $(Icons.delete).tap();
    await $('OK').tap();
    await $('ほしいものを追加').waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );
    expect($('E2E編集済み商品'), findsNothing);
  });
}
