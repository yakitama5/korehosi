import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/purchase/entity/purchase.dart';
import '../../../../domain/user/value_object/age_group.dart';
import '../../user/state/auth_user_provider.dart';
import 'child_view_purchase_provider.dart';
import 'purchase_provider.dart';

part 'age_applicable_purchase_provider.g.dart';

/// 年齢に応じた購入情報
@riverpod
Future<Purchase?> ageApplicablePurchase(
  AgeApplicablePurchaseRef ref, {
  required String groupId,
  required String itemId,
}) async {
  // 自身の年齢層を取得
  final ageGroup =
      await ref.watch(authUserProvider.selectAsync((user) => user?.ageGroup));
  if (ageGroup == null) {
    return null;
  }

  // 年齢を元に取得
  return switch (ageGroup) {
    AgeGroup.child => ref.watch(
        childViewPurchaseProvider(groupId: groupId, itemId: itemId).future,
      ),
    AgeGroup.adult =>
      ref.watch(purchaseProvider(groupId: groupId, itemId: itemId).future),
  };
}
