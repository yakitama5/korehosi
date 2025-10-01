import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_application/src/common/mixin/run_usecase_mixin.dart';
import 'package:packages_application/src/group/state/current_group_provider.dart';
import 'package:packages_application/src/user/state/auth_user_provider.dart';
import 'package:packages_domain/exception.dart';
import 'package:packages_domain/item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'purchase_usecase.g.dart';

@riverpod
PurchaseUsecase purchaseUsecase(Ref ref) => PurchaseUsecase(ref);

/// ほしい物の購入情報に関するユースケース
class PurchaseUsecase with RunUsecaseMixin {
  PurchaseUsecase(this.ref);

  final Ref ref;

  /// 購入情報の取得
  Stream<Purchase?> fetchByItemId({
    required String groupId,
    required String itemId,
  }) => ref
      .read(purchaseRepositoryProvider)
      .fetchByItemId(groupId: groupId, itemId: itemId);

  /// (子供参照用)購入情報の取得
  Stream<Purchase?> fetchByItemIdForChild({
    required String groupId,
    required String itemId,
  }) => ref
      .read(purchaseRepositoryProvider)
      .fetchByItemIdForChild(groupId: groupId, itemId: itemId);

  /// 購入情報の登録
  Future<void> add({
    required String itemId,
    int? price,
    String? buyerName,
    DateTime? planDate,
    required bool surprise,
    DateTime? sentAt,
    String? memo,
  }) => execute(
    ref,
    action: () async {
      // グループ所属判定
      final groupId = await ref.read(
        currentGroupProvider.selectAsync((group) => group?.id),
      );
      if (groupId == null) {
        throw UpdateTargetNotFoundException();
      }

      // ドキュメントの登録
      final userId = await ref.read(
        authUserProvider.selectAsync((data) => data?.id),
      );
      await ref
          .read(purchaseRepositoryProvider)
          .add(
            groupId: groupId,
            itemId: itemId,
            price: price,
            buyerName: buyerName,
            planDate: planDate,
            surprise: surprise,
            sentAt: sentAt,
            memo: memo,
            uid: userId!,
          );
    },
  );

  /// 欲しい物の更新
  Future<void> update({
    required String itemId,
    int? price,
    String? buyerName,
    DateTime? planDate,
    required bool surprise,
    DateTime? sentAt,
    String? memo,
  }) => execute(
    ref,
    action: () async {
      // グループ所属判定
      final groupId = await ref.read(
        currentGroupProvider.selectAsync((group) => group?.id),
      );
      if (groupId == null) {
        throw UpdateTargetNotFoundException();
      }

      // ドキュメントの登録
      final userId = await ref.read(
        authUserProvider.selectAsync((data) => data?.id),
      );
      await ref
          .read(purchaseRepositoryProvider)
          .update(
            purchaseId: itemId,
            groupId: groupId,
            price: price,
            buyerName: buyerName,
            planDate: planDate,
            surprise: surprise,
            sentAt: sentAt,
            memo: memo,
            uid: userId!,
          );
    },
  );

  /// 購入情報の削除
  Future<void> delete({required String itemId}) => execute(
    ref,
    action: () async {
      // グループ所属判定
      final groupId = await ref.read(
        currentGroupProvider.selectAsync((group) => group?.id),
      );
      if (groupId == null) {
        throw UpdateTargetNotFoundException();
      }

      await ref
          .read(purchaseRepositoryProvider)
          .delete(groupId: groupId, purchaseId: itemId);
    },
  );
}
