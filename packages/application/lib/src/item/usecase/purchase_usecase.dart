import 'package:packages_application/item.dart';
import 'package:packages_application/src/common/mixin/run_usecase_mixin.dart';
import 'package:packages_application/src/group/state/current_group_provider.dart';
import 'package:packages_application/src/user/state/auth_user_provider.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'purchase_usecase.g.dart';

@Riverpod(keepAlive: true)
PurchaseUsecase purchaseUsecase(Ref ref) => PurchaseUsecase(ref);

/// ほしい物の購入情報に関するユースケース
class PurchaseUsecase with RunUsecaseMixin {
  PurchaseUsecase(this.ref);

  final Ref ref;

  ItemUsecase get _itemUsecase => ref.read(itemUsecaseProvider);

  /// 購入情報の取得
  Future<Purchase?> fetchByItemId({
    required GroupId groupId,
    required ItemId itemId,
  }) => ref
      .read(purchaseRepositoryProvider)
      .fetchByItemId(groupId: groupId, itemId: itemId);

  /// 購入情報の登録
  Future<void> add({
    required ItemId itemId,
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
        throw const BusinessException(
          BusinessExceptionType.updateTargetNotFound,
        );
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
            userId: userId!,
          );

      // Providerへの反映
      _itemUsecase.refreshItemProvideres();
    },
  );

  /// 欲しい物の更新
  Future<void> update({
    required ItemId itemId,
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
        throw const BusinessException(BusinessExceptionType.notSelectedGroup);
      }

      // ドキュメントの登録
      final userId = await ref.read(
        authUserProvider.selectAsync((data) => data?.id),
      );
      await ref
          .read(purchaseRepositoryProvider)
          .update(
            itemId: itemId,
            groupId: groupId,
            price: price,
            buyerName: buyerName,
            planDate: planDate,
            surprise: surprise,
            sentAt: sentAt,
            memo: memo,
            userId: userId!,
          );

      // Providerへの反映
      _itemUsecase.refreshItemProvideres();
    },
  );

  /// 購入情報の削除
  Future<void> delete({required ItemId itemId}) => execute(
    ref,
    action: () async {
      // グループ所属判定
      final groupId = await ref.read(
        currentGroupProvider.selectAsync((group) => group?.id),
      );
      if (groupId == null) {
        throw const BusinessException(
          BusinessExceptionType.updateTargetNotFound,
        );
      }

      await ref
          .read(purchaseRepositoryProvider)
          .delete(groupId: groupId, itemId: itemId);

      // Providerへの反映
      _itemUsecase.refreshItemProvideres();
    },
  );
}
