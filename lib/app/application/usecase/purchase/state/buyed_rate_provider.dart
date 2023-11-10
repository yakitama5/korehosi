import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../item/state/current_group_items_provider.dart';
import 'buyed_purchase_count_provider.dart';

part 'buyed_rate_provider.g.dart';

/// 購入率
@riverpod
Future<double> buyedRate(BuyedRateRef ref) async {
  // 購入済の欲しい物に絞り込む
  final allItemsCount = await ref
      .watch(currentGroupItemsProvider.selectAsync((items) => items.length));
  final buyedCount = await ref.watch(buyedCountProvider.future);

  // 欲しい物が0件の場合、計算しない
  if (allItemsCount <= 0) {
    return 0;
  }

  // 割合を求める
  final percent = (buyedCount / allItemsCount) * 100;
  return percent;
}
