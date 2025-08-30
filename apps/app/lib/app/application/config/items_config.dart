import '../../domain/purchase/value_object/purchase_status.dart';
import '../model/item/item_order_key.dart';
import '../model/item/item_order_model.dart';
import '../model/item/items_config.dart';
import '../model/order.dart';

/// 欲しい物一覧の設定
const itemsConfig = ItemsConfig(
  defaultOrder:
      ItemOrderModel(key: ItemOrderKey.createdAt, sortOrder: SortOrder.desc),
  defaultPurchaseStatus: {
    PurchaseStatus.notPurchased,
    PurchaseStatus.purchasePlan,
  },
);
