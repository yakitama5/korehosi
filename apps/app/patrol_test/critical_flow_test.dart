import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

void main() {
  patrolTest('初回登録からほしいものの作成・編集・削除まで完了できる', ($) async {
    await app.main();
    await $.pumpAndSettle();

    // A clean auth emulator can route either through Welcome or directly to
    // onboarding, depending on when anonymous sign-in completes.
    if ($('はじめる').evaluate().isNotEmpty) {
      await $('はじめる').tap();
      await $.pumpAndSettle();
    }
    await $(FilledButton).first.tap();
    await $.pumpAndSettle();
    await $(TextField).first.enterText('E2Eユーザー');
    await $(FilledButton).first.tap();
    await $.pumpAndSettle();
    await $('はじめる').last.tap();
    await $('ほしいものを追加').waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );

    expect($('ほしいもの'), findsWidgets);
    await $('ほしいものを追加').tap();
    await $.pumpAndSettle();
    await $(TextField).first.enterText('E2Eテスト商品');
    await $('保存').tap();
    await $('E2Eテスト商品').waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );
    expect($('E2Eテスト商品'), findsWidgets);

    await $('E2Eテスト商品').first.tap();
    await $.pump(const Duration(milliseconds: 500));
    await $(Icons.edit).tap();
    await $.pump(const Duration(milliseconds: 500));
    await $(TextField).first.enterText('E2E編集済み商品');
    await $('保存').tap();
    await $('E2E編集済み商品').waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );
    expect($('E2E編集済み商品'), findsWidgets);

    await $(Icons.edit).tap();
    await $.pump(const Duration(milliseconds: 500));
    await $(Icons.delete).tap();
    await $('OK').tap();
    await $('ほしいものを追加').waitUntilVisible(
      timeout: const Duration(seconds: 20),
    );
    expect($('E2E編集済み商品'), findsNothing);
  });
}
