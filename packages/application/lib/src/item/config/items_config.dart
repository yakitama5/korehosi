import 'package:packages_application/src/item/model/item_order_key.dart';
import 'package:packages_application/src/item/model/item_order_model.dart';
import 'package:packages_application/src/item/model/items_config.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/item.dart';

/// 欲しい物一覧の設定
const itemsConfig = ItemsConfig(
  defaultOrder: ItemOrderModel(
    key: ItemOrderKey.createdAt,
    sortOrder: SortOrder.desc,
  ),
  defaultPurchaseStatus: {
    PurchaseStatus.notPurchased,
    PurchaseStatus.purchasePlan,
  },
);
