import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_purchase_rate.freezed.dart';

/// 月間合計金額のサマリ
@freezed
abstract class ItemPurchaseRate with _$ItemPurchaseRate {
  const factory ItemPurchaseRate({
    required int purchasedItemCount,
    required int itemCount,
    required double purchaseRate,
  }) = _ItemPurchaseRate;
}
