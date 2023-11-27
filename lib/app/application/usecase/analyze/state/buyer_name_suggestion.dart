import 'package:collection/collection.dart';
import 'package:family_wish_list/app/application/usecase/purchase/state/current_group_age_applicable_purchases_provider.dart';
import 'package:family_wish_list/app/application/usecase/user/state/current_group_join_users_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'buyer_name_suggestion.g.dart';

/// 購入者のサジェストリスト
/// 対象は購入者に入力したことのある人 + 現在のグループ内のユーザー
@riverpod
Future<List<String>> buyerNameSuggestion(BuyerNameSuggestionRef ref) async {
  // `selectAsync`を利用すると、後続のProviderがdisposeされてしまうため、同時に定義
  final buyerNameHsts = ref.watch(
    currentGroupAgeApplicablePurchasesProvider.future.select((data) async {
      final a = await data;
      return a.map((e) => e.buyerName).whereNotNull().toList();
    }),
  );
  final currentGroupUserNames = ref.watch(
    currentGroupJoinUsersProvider.future.select((data) async {
      final a = await data;
      return a.map((e) => e.name).whereNotNull().toList();
    }),
  );

  // 購入者の履歴を優先して結合
  return {
    ...await buyerNameHsts,
    ...await currentGroupUserNames,
  }.toList();
}
