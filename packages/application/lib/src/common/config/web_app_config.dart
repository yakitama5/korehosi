import 'package:packages_application/src/common/model/web_app_config.dart';

/// Webアプリの設定情報
const webAppConfig = WebAppConfig(
  appWebUrL: String.fromEnvironment('appWebUrl'),
);
