import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:packages_core/util.dart';
import 'package:packages_dependency_override/dependency_override.dart';
import 'package:packages_domain/common.dart';
import 'package:version/version.dart';

typedef InitializedValues = ({AppBuildConfig buildConfig});

final class AppInitializer {
  AppInitializer._();

  static Future<InitializedValues> initialize() async {
    // Flutter Initialize
    WidgetsFlutterBinding.ensureInitialized();

    // Build Config
    final buildConfig = await _initializeBuildConfig();
    logger.i(buildConfig);

    // slang
    await LocaleSettings.useDeviceLocale();

    // 画面の向きを強制
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    // WebのURLから "#" を削除
    usePathUrlStrategy();

    // インフラ層の初期化
    await InfrastructureInitializer.initialize(
      flavor: buildConfig.flavor,
      isWeb: kIsWeb,
    );

    return (buildConfig: buildConfig);
  }

  static Future<AppBuildConfig> _initializeBuildConfig() async {
    final packageInfo = await PackageInfo.fromPlatform();

    return AppBuildConfig(
      flavor: Flavor.values.byName(const String.fromEnvironment('flavor')),
      appName: packageInfo.appName,
      packageName: packageInfo.packageName,
      version: Version.parse(packageInfo.version),
      buildNumber: packageInfo.buildNumber,
      buildSignature: packageInfo.buildSignature,
      installerStore: packageInfo.installerStore,
    );
  }
}
