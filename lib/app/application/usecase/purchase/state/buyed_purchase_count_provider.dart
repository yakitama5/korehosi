import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'buyed_purchases_provider.dart';

part 'buyed_purchase_count_provider.g.dart';

/// 購入済件数
@riverpod
Future<int> buyedCount(BuyedCountRef ref) async {
  return ref.watch(
    buyedPurchasesProvider.selectAsync((purchases) => purchases.length),
  );
}
