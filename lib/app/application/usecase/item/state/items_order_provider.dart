import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../config/items_config.dart';
import '../../../model/item/item_order_model.dart';

/// 欲しい物の並び順
final itemsOrderProvider = StateProvider.autoDispose<ItemOrderModel>(
  (ref) => itemsConfig.defaultOrder,
);
