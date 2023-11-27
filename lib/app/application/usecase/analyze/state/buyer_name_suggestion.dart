import 'package:collection/collection.dart';
import 'package:family_wish_list/app/application/usecase/purchase/state/current_group_age_applicable_purchases_provider.dart';
import 'package:family_wish_list/app/application/usecase/user/state/current_group_join_users_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buyer_name_suggestion.g.dart';

/// 購入者のサジェストリスト
/// 対象は購入者に入力したことのある人 + 現在のグループ内のユーザー
@riverpod
Future<List<String>> buyerNameSuggestion(BuyerNameSuggestionRef ref) async {
  final buyerNameHsts = await ref.watch(
    currentGroupAgeApplicablePurchasesProvider.selectAsync(
      (list) =>
          list.map((purchase) => purchase.buyerName).whereNotNull().toList(),
    ),
  );
  final currentGroupUserNames = await ref.watch(
    currentGroupJoinUsersProvider
        .selectAsync((data) => data.map((e) => e.name).whereNotNull().toList()),
  );

  // 購入者の履歴を優先して結合
  return {
    ...buyerNameHsts,
    ...currentGroupUserNames,
  }.toList();
}
