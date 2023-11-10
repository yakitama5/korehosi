import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../domain/purchase/value_object/purchase_status.dart';
import '../../../config/items_config.dart';

/// 購入ステータスフィルタ
final itemsFilterPurchaseStatusProvider = StateProvider<Set<PurchaseStatus>>(
  (ref) => itemsConfig.defaultPurchaseStatus,
);
