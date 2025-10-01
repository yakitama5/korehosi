import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/item.dart';

import 'item_order_model.dart';

part 'items_config.freezed.dart';

/// ほしい物の設定
@freezed
abstract class ItemsConfig with _$ItemsConfig {
  const factory ItemsConfig({
    required ItemOrderModel defaultOrder,
    required Set<PurchaseStatus> defaultPurchaseStatus,
    double? defaultWishRank,
  }) = _ItemsConfig;
}
