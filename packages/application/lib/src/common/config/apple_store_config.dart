import 'package:packages_application/src/common/model/apple_store_config.dart';

/// AppleStoreの設定情報
const appleStoreConfig = AppleStoreConfig(
  bundleId: String.fromEnvironment('iosBundleId'),
  appStoreId: String.fromEnvironment('appStoreId'),
);
