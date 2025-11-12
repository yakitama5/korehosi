import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/src/item/value_object/items_order.dart';
import 'package:packages_domain/src/item/value_object/purchase_status.dart';

part 'items_search_query.freezed.dart';

/// ほしい物
@freezed
abstract class ItemsSearchQuery with _$ItemsSearchQuery {
  const factory ItemsSearchQuery({
    double? minimumWishRank,
    required List<PurchaseStatus> purchaseStatuses,
    required ItemsOrder itemsOrder,
  }) = _ItemsSearchQuery;
}
