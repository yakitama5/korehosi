import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/common.dart';

part 'item_image.freezed.dart';

/// ほしい物の画像
@freezed
abstract class ItemImage with _$ItemImage {
  const factory ItemImage({required ImageId id, required String url}) =
      _ItemImage;
}
