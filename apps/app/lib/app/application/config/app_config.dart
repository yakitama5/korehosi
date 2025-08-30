import '../../../env/dart_define_key.dart';
import '../model/app_config.dart';
import '../model/flavor.dart';

/// dart-defineから取得した設定値
const _flavorString = String.fromEnvironment(dartDefineKeyFlavor);
const _isProd = _flavorString == 'prod';

/// アプリ共通の設定
const appConfig = AppConfig(
  flavor: _isProd ? Flavor.prod : Flavor.dev,
  appName: String.fromEnvironment(dartDefineKeyAppName),
  packageName: String.fromEnvironment(dartDefineKeyAndroidPackageName),
  bundleId: String.fromEnvironment(dartDefineKeyIosBundleId),
  appStoreId: String.fromEnvironment(dartDefineKeyAppStoreId),
  webUrl: String.fromEnvironment(dartDefineKeyAppWebUrl),
);
