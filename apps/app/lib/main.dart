import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/app/application/state/initial_location_provider.dart';
import 'package:flutter_app/app/presentation/app.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_dependency_override/dependency_override.dart';

void main() async {
  // Flutter Initialize
  WidgetsFlutterBinding.ensureInitialized();

  // slang
  LocaleSettings.useDeviceLocale();

  // 画面の向きを強制
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // WebのURLから "#" を削除
  usePathUrlStrategy();

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
