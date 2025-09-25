import 'dart:io' as io;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/env/env.dart' as p;
import 'package:flutter_app/env/env.dev.dart' as d;
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infrastructure_branch/common.dart';
import 'package:infrastructure_firebase/common.dart';
import 'package:packages_dependency_override/dependency_override.dart';
import 'package:packages_domain/app_info.dart';
import 'package:packages_domain/core.dart';
import 'package:packages_domain/group.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

import 'app/application/config/app_config.dart';
import 'app/application/state/initial_location_provider.dart';
import 'app/infrastructure/package_info_plus/service/package_info_plus_app_info_service.dart';
import 'app/infrastructure/revenue_cat/config/revenue_cat_config.dart';
import 'app/infrastructure/revenue_cat/service/revenue_cat_app_in_purchase_service.dart';
import 'app/presentation/app.dart';

void main() async {
  // Flutter Initialize
  WidgetsFlutterBinding.ensureInitialized();

  // slang
  LocaleSettings.useDeviceLocale();

  // 画面の向きを強制
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Firebase
  // 公開しているWebサイトのサイトキー
  final recpthaSiteKey = switch (appConfig.flavor) {
    Flavor.prd => p.Env.recpthaSiteKey,
    Flavor.dev => d.Env.recpthaSiteKey,
  };
  await FirebaseInitializer.initialize(appConfig.flavor, recpthaSiteKey);

  // RevenueCat
  await initPlatformState();

  // branch (deep link)
  await BranchInitializer.initialize();

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
          // RevenueCat
          appInPurchaseServiceProvider.overrideWith(
            RevenueCatAppInPurchaseService.new,
          ),
        ],
        child: const App(),
      ),
    ),
  );
}

Future<void> initPlatformState() async {
  // Web版は課金は未対応
  if (kIsWeb) {
    return;
  }

  // 開発環境はスキップ
  switch (appConfig.flavor) {
    case Flavor.dev:
      return;
    case Flavor.prd:
    // do nothing
  }

  late final PurchasesConfiguration configuration;
  if (io.Platform.isAndroid) {
    configuration = PurchasesConfiguration(revenueCatPlayStoreKey);
  } else if (io.Platform.isIOS) {
    configuration = PurchasesConfiguration(revenueCatAppStoreKey);
  } else {
    return;
  }
  await Purchases.configure(configuration);
}
