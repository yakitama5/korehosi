import 'package:flutter/material.dart';
import 'package:flutter_app/app/app.dart';
import 'package:flutter_app/app/app_initializer.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/common.dart';
import 'package:packages_dependency_override/dependency_override.dart';

void main() async {
  // アプリの初期処理
  final initializedResult = await AppInitializer.initialize();

  runApp(
    TranslationProvider(
      child: ProviderScope(
        overrides: [
          // 初期ロケーションの設定
          initialLocationProvider.overrideWithValue(null),

          // 起動時に取得したアプリの基本情報を設定
          appBuildConfigProvider.overrideWithValue(
            initializedResult.buildConfig,
          ),

          // インフラ層のDI
          ...await initializeInfrastructureProviders(),
        ],
        child: const App(),
      ),
    ),
  );
}
