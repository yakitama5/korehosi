import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_image_config.freezed.dart';

@freezed
class ItemImageConfig with _$ItemImageConfig {
  const factory ItemImageConfig({
    required int minWidth,
    required int minHeight,
    required int quality,
  }) = _ItemImageConfig;
}
