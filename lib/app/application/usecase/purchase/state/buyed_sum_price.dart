import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'buyed_purchases_provider.dart';

part 'buyed_sum_price.g.dart';

/// 購入済の合計金額
@riverpod
Future<int> buyedSumPrice(BuyedSumPriceRef ref) async {
  // 購入済の購入情報を取得
  final buyedPurchases = await ref.watch(buyedPurchasesProvider.future);

  // 金額を合計する
  return buyedPurchases.map((e) => e.price).whereNotNull().sum;
}
