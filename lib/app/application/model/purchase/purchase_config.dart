import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_config.freezed.dart';

/// ほしい物の購入情報に関する設定
@freezed
class PurchaseConfig with _$PurchaseConfig {
  const factory PurchaseConfig({
    required int maxPriceLength,
    required int maxBuyerNameLength,
    required int maxMemoLength,
  }) = _PurchaseConfig;
}
