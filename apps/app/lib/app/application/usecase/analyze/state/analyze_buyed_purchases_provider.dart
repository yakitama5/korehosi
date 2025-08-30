import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/purchase/entity/purchase.dart';
import '../../../../domain/purchase/value_object/purchase_status.dart';
import '../../analyze/state/analyze_source_purchases_provider.dart';

part 'analyze_buyed_purchases_provider.g.dart';

/// 購入済の購入情報
@riverpod
Future<List<Purchase>> analyzeBuyedPurchases(Ref ref) {
  // 購入情報を取得
  return ref.watch(
    analyzeSourcePurchasesProvider.selectAsync(
      // 購入済に絞り込む
      (purchases) => purchases
          .where(
            (p) => switch (p.status) {
              PurchaseStatus.notPurchased => false,
              PurchaseStatus.purchasePlan => false,
              PurchaseStatus.purchased => true,
            },
          )
          .toList(),
    ),
  );
}
