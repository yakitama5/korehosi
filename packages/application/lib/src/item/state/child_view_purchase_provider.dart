import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/src/item/usecase/purchase_usecase.dart';
import 'package:packages_domain/item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'child_view_purchase_provider.g.dart';

/// (子供参照用)購入情報
/// データの参照頻度を減らすため、`keepAlive`を指定
@Riverpod(keepAlive: true)
Stream<Purchase?> childViewPurchase(
  Ref ref, {
  required String groupId,
  required String itemId,
}) {
  return ref
      .read(purchaseUsecaseProvider)
      .fetchByItemIdForChild(groupId: groupId, itemId: itemId);
}
