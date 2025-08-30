import 'package:collection/collection.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'analyze_buyed_purchases_provider.dart';

part 'buyed_sum_price.g.dart';

/// 購入済の合計金額
@riverpod
Future<int> buyedSumPrice(Ref ref) async {
  // 購入済の購入情報を取得
  final buyedPurchases = await ref.watch(analyzeBuyedPurchasesProvider.future);

  // 金額を合計する
  return buyedPurchases.map((e) => e.price).nonNulls.sum;
}
