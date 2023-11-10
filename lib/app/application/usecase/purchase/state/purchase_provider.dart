import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/purchase/entity/purchase.dart';
import '../purchase_usecase.dart';

part 'purchase_provider.g.dart';

/// 購入情報
@Riverpod(keepAlive: true)
Stream<Purchase?> purchase(
  PurchaseRef ref, {
  required String groupId,
  required String itemId,
}) {
  return ref
      .read(purchaseUsecaseProvider)
      .fetchByItemId(groupId: groupId, itemId: itemId);
}
