import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/src/item/value_object/item_order_key.dart';

part 'items_order.freezed.dart';

/// ほしい物の並び順
@freezed
abstract class ItemsOrder with _$ItemsOrder {
  const factory ItemsOrder({
    required ItemOrderKey key,
    required SortOrder sortOrder,
  }) = _ItemsOrder;

  const ItemsOrder._();

  ItemsOrder selectOrderKey(ItemOrderKey orderKey) {
    if (key == orderKey) {
      return copyWith(sortOrder: sortOrder.reverse);
    } else {
      return _ItemsOrder(key: orderKey, sortOrder: SortOrder.asc);
    }
  }
}
