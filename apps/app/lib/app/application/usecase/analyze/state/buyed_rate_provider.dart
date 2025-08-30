import 'package:family_wish_list/app/application/usecase/analyze/state/analyze_buyed_count_provider.dart';
import 'package:family_wish_list/app/application/usecase/analyze/state/analyze_source_items_provider.dart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buyed_rate_provider.g.dart';

/// 購入率
@riverpod
Future<double> buyedRate(Ref ref) async {
  // 購入済の欲しい物に絞り込む
  final asyncAllItemsCount = ref
      .watch(analyzeSourceItemsProvider.selectAsync((items) => items.length));
  final asyncBuyedCount = ref.watch(analyzeBuyedCountProvider.future);
  final allItemsCount = await asyncAllItemsCount;
  final buyedCount = await asyncBuyedCount;

  // 欲しい物が0件の場合、計算しない
  if (allItemsCount <= 0) {
    return 0;
  }

  // 割合を求める
  final percent = (buyedCount / allItemsCount) * 100;
  return percent;
}
