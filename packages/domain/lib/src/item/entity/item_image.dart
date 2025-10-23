import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_image.freezed.dart';

extension type ItemImageId(String value) {}

/// ほしい物の画像
@freezed
abstract class ItemImage with _$ItemImage {
  const factory ItemImage({required ItemImageId id, required String url}) =
      _ItemImage;
}
