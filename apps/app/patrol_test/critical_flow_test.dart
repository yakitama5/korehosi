import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

const _projectId = 'family-wish-list-ad3c7-dev';

void main() {
  patrolTest('初回登録からほしいものの作成・編集・削除まで完了できる', ($) async {
    await _resetFirebaseEmulators();
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

Future<void> _resetFirebaseEmulators() async {
  const host = String.fromEnvironment(
    'firebaseEmulatorHost',
    defaultValue: 'localhost',
  );
  final client = HttpClient();
  try {
    for (final uri in [
      Uri.parse(
        'http://$host:8080/emulator/v1/projects/$_projectId/'
        'databases/(default)/documents',
      ),
      Uri.parse(
        'http://$host:9099/emulator/v1/projects/$_projectId/accounts',
      ),
    ]) {
      for (var attempt = 1; attempt <= 3; attempt++) {
        final request = await client.deleteUrl(uri);
        final response = await request.close();
        await response.drain<void>();
        if (response.statusCode < HttpStatus.badRequest) {
          break;
        }
        if (attempt == 3) {
          throw HttpException(
            'Failed to reset emulator: ${response.statusCode}',
            uri: uri,
          );
        }
        await Future<void>.delayed(const Duration(milliseconds: 300));
      }
    }
  } finally {
    client.close(force: true);
  }
}
