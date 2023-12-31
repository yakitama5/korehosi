import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/purchase/entity/purchase.dart';
import '../../group/state/current_group_provider.dart';
import 'age_applicable_purchase_provider.dart';

part 'current_group_age_applicable_purchase_provider.g.dart';

/// グループ内の年齢に応じた購入情報
@riverpod
Future<Purchase?> currentGroupAgeApplicablePurchase(
  CurrentGroupAgeApplicablePurchaseRef ref, {
  required String itemId,
}) async {
  // 現在のグループ情報を取得
  final groupId =
      await ref.watch(currentGroupProvider.selectAsync((group) => group?.id));
  if (groupId == null) {
    return null;
  }

  return ref.watch(
    ageApplicablePurchaseProvider(groupId: groupId, itemId: itemId).future,
  );
}
