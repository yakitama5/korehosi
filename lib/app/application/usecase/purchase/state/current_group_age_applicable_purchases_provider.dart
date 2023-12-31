import 'package:collection/collection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/purchase/entity/purchase.dart';
import '../../item/state/current_group_items_provider.dart';
import 'current_group_age_applicable_purchase_provider.dart';

part 'current_group_age_applicable_purchases_provider.g.dart';

/// グループ内の購入情報
@riverpod
Future<List<Purchase>> currentGroupAgeApplicablePurchases(
  CurrentGroupAgeApplicablePurchasesRef ref,
) async {
  // 表示中のグループ内の欲しい物のID一覧を取得
  final itemIds = await ref.watch(
    currentGroupItemsProvider
        .selectAsync((data) => data.map((e) => e.id).toList()),
  );

  // 購入情報に変換
  final asyncPurchases = itemIds.map(
    (itemId) => ref.watch(
      currentGroupAgeApplicablePurchaseProvider(itemId: itemId).future,
    ),
  );
  return (await Future.wait(asyncPurchases)).whereNotNull().toList();
}
