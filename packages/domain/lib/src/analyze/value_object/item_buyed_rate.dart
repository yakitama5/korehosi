import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_buyed_rate.freezed.dart';

/// 月間合計金額のサマリ
@freezed
abstract class ItemBuyedRate with _$ItemBuyedRate {
  const factory ItemBuyedRate({
    required int buyedItemCount,
    required int itemCount,
    required double buyedRate,
  }) = _ItemBuyedRate;
}
