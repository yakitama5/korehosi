import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/app.dart';
import 'package:flutter_app/app/app_initializer.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested/nested.dart';
import 'package:packages_application/common.dart';
import 'package:packages_application/i18n.dart';
import 'package:packages_dependency_override/dependency_override.dart';
import 'package:packages_designsystem/i18n.dart';

void main() async {
  // アプリの初期処理
  final initializedResult = await AppInitializer.initialize();

  runApp(
    ProviderScope(
      overrides: [
        // 初期ロケーションの設定
        initialLocationProvider.overrideWithValue('/items'),

        // 起動時に取得したアプリの基本情報を設定
        appBuildConfigProvider.overrideWithValue(initializedResult.buildConfig),

        // インフラ層のDI
        ...await initializeInfrastructureProviders(),
      ],
      child: Nested(
        children: const [
          // Slangの伝播
          _AppTranslationProvider(),
          DesignsystemTranslationProvider(),
          ApplicationTranslationProvider(),

          _DevicePreviewWrapper(),
        ],
        child: const App(),
      ),
    ),
  );
}

final class _AppTranslationProvider extends SingleChildStatelessWidget {
  const _AppTranslationProvider();

  @override
  Widget buildWithChild(BuildContext context, Widget? child) =>
      TranslationProvider(child: child ?? const SizedBox.shrink());
}

final class _DevicePreviewWrapper extends SingleChildStatelessWidget {
  const _DevicePreviewWrapper();
  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    const enableDevicePreview = bool.fromEnvironment('devicePreview');

    return DevicePreview(
      enabled: enableDevicePreview,
      builder: (context) => child ?? const SizedBox.shrink(),
    );
  }
}
