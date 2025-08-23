import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_image_config.freezed.dart';

/// ほしい物の画像に関する設定
@freezed
abstract class ItemImageConfig with _$ItemImageConfig {
  const factory ItemImageConfig({
    required int minWidth,
    required int minHeight,
    required int quality,
  }) = _ItemImageConfig;
}
