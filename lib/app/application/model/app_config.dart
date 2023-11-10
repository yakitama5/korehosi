import 'package:freezed_annotation/freezed_annotation.dart';

import 'flavor.dart';

part 'app_config.freezed.dart';

@freezed
class AppConfig with _$AppConfig {
  const factory AppConfig({
    required Flavor flavor,
    required String appName,
    required String packageName,
    required String bundleId,
    required String appStoreId,
    required String webUrl,
  }) = _AppConfig;
}
