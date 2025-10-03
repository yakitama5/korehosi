import 'package:freezed_annotation/freezed_annotation.dart';

part 'apple_store_config.freezed.dart';

/// アプリ共通の設定
@freezed
abstract class AppleStoreConfig with _$AppleStoreConfig {
  const factory AppleStoreConfig({
    required String bundleId,
    required String appStoreId,
  }) = _AppleStoreConfig;
}
