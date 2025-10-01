import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_dependency_override/dependency_override.dart';
import 'package:packages_domain/app_info.dart';

import '../../../packages/infrastructure/package_info/lib/src/common/service/package_info_plus_app_info_service.dart';
import 'app/application/state/initial_location_provider.dart';
import 'app/presentation/app.dart';

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

          // `package_info_plus`
          appInfoServiceProvider.overrideWith(
            PackageInfoPlusAppInfoService.new,
          ),
        ],
        child: const App(),
      ),
    ),
  );
}
