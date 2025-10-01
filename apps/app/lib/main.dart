import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/app/app_initializer.dart';
import 'package:flutter_app/app/presentation/app.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_dependency_override/dependency_override.dart';
import 'package:packages_domain/core.dart';

void main() async {
  // アプリの初期処理
  final initializedResult = await AppInitializer.initialize();

  runApp(
    TranslationProvider(
      child: ProviderScope(
        overrides: [
          // 初期ロケーションの設定
          initialLocationProvider.overrideWith((ref) => null),

          // インフラ層のDI
          ...await initializeInfrastructureProviders(),
        ],
        child: const App(),
      ),
    ),
  );
}
