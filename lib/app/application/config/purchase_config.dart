import '../model/purchase/purchase_config.dart';

const purchaseConfig = PurchaseConfig(
  // 子供への誤公開を防ぐため、デフォルトがサプライズ設定
  initialSurprise: false,
  priceKey: 'price',
  planDataKey: 'plan_date',
  buyerNameKey: 'buyer_name',
  surpriseKey: 'surprise',
  sentAtKey: 'sent_at',
  memoKey: 'memo',
  maxPriceLength: 15,
  maxBuyerNameLength: 30,
  maxMemoLength: 1000,
);
