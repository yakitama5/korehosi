import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest('初回登録からほしいものの作成・編集・削除まで完了できる', ($) async {
    await app.main();
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
      await $.pump(const Duration(milliseconds: 500));
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
    await $('はじめる').last.waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );
    await $('はじめる').last.tap();
    await $('ほしいものを追加').waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );

    expect($('ほしいもの'), findsWidgets);
    await $('ほしいものを追加').tap();
    await $.pump(const Duration(milliseconds: 500));
    await $(TextField).first.enterText('E2Eテスト商品');
    await $('保存').tap();
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
