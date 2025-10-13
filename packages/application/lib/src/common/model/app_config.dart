import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/common.dart';

part 'app_config.freezed.dart';

/// アプリ共通の設定
@freezed
abstract class AppConfig with _$AppConfig {
  const factory AppConfig({
    required Flavor flavor,
    required String appName,
    required String packageName,
    required String bundleId,
    required String appStoreId,
    required String webUrl,
  }) = _AppConfig;
}
