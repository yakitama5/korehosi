import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/core.dart';

part 'web_app_config.freezed.dart';

/// アプリ共通の設定
@freezed
abstract class WebAppConfig with _$WebAppConfig {
  const factory WebAppConfig({required String appWebUrL}) = _WebAppConfig;
}
