import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_in_purchase_product.freezed.dart';

@freezed
class AppInPurchaseProduct with _$AppInPurchaseProduct {
  const factory AppInPurchaseProduct({
    required String id,
    required String title,
    required double price,
  }) = _AppInPurchaseProduct;
}
