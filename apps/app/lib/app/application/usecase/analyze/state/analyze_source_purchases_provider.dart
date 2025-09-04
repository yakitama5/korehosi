import 'package:flutter_app/app/application/usecase/analyze/state/analyze_source_items_provider.dart.dart';
import 'package:flutter_app/app/application/usecase/analyze/state/buyer_filter_notifier_provider.dart';
import 'package:flutter_app/app/application/usecase/purchase/state/current_group_age_applicable_purchase_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_domain/item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'analyze_source_purchases_provider.g.dart';

@riverpod
Future<List<Purchase>> analyzeSourcePurchases(Ref ref) async {
  // フィルタの内容で絞り込む
  final buyerName = ref.watch(buyerFilterNotifierProvider);
  final items = await ref.watch(analyzeSourceItemsProvider.future);
  final asyncPurchases = items.map(
    (e) async => ref.watch(
      currentGroupAgeApplicablePurchaseProvider(itemId: e.id).future,
    ),
  );
  final purchases = (await Future.wait(asyncPurchases)).nonNulls;

  return purchases.where((e) {
    return buyerName == null || e.buyerName == buyerName;
  }).toList();
}
