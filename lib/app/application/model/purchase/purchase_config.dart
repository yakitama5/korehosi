import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_config.freezed.dart';

@freezed
class PurchaseConfig with _$PurchaseConfig {
  const factory PurchaseConfig({
    required bool initialSurprise,
    required String priceKey,
    required String planDataKey,
    required String buyerNameKey,
    required String surpriseKey,
    required String sentAtKey,
    required String memoKey,
    required int maxPriceLength,
    required int maxBuyerNameLength,
    required int maxMemoLength,
  }) = _PurchaseConfig;
}
