import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/purchase/entity/purchase.dart';
import '../purchase_usecase.dart';

part 'child_view_purchase_provider.g.dart';

/// (子供参照用)購入情報
@riverpod
Stream<Purchase?> childViewPurchase(
  ChildViewPurchaseRef ref, {
  required String groupId,
  required String itemId,
}) {
  return ref
      .watch(purchaseUsecaseProvider)
      .fetchByItemIdForChild(groupId: groupId, itemId: itemId);
}
