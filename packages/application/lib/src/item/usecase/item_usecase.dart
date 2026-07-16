import 'package:cross_file/cross_file.dart';
import 'package:packages_application/group.dart';
import 'package:packages_application/i18n/strings.g.dart';
import 'package:packages_application/item.dart';
import 'package:packages_application/src/common/mixin/run_usecase_mixin.dart';
import 'package:packages_application/src/user/extension/user_mixin.dart';
import 'package:packages_application/src/user/state/auth_user_provider.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/item.dart';
import 'package:packages_domain/notification.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'item_usecase.g.dart';

/// 欲しいもの詳細ページのパスを生成するためのファンクション
typedef GenerateItemDetailRoute = String Function(ItemId itemId);

@Riverpod(keepAlive: true)
ItemUsecase itemUsecase(Ref ref) => ItemUsecase(ref);

/// ほしい物に関するユースケース
class ItemUsecase with RunUsecaseMixin {
  ItemUsecase(this.ref);

  final Ref ref;

  /// 欲しいものの検索
  Future<PageInfo<Item>> searchItems({
    required int page,
    required GroupId groupId,
    required AgeGroup ageGroup,
    required ItemsSearchQuery query,
  }) {
    return ref
        .read(itemRepositoryProvider)
        .searchItems(
          page: page,
          pageSize: itemsPageConfig.pageSize,
          groupId: groupId,
          ageGroup: ageGroup,
          query: query,
        );
  }

  /// 現在の検索条件に一致する、すべての欲しいものをページ順に取得する。
  Future<List<Item>> searchAllItems({
    required GroupId groupId,
    required AgeGroup ageGroup,
    required ItemsSearchQuery query,
  }) async {
    final firstPage = await searchItems(
      page: 1,
      groupId: groupId,
      ageGroup: ageGroup,
      query: query,
    );
    final pageCount = (firstPage.totalCount / itemsPageConfig.pageSize).ceil();
    if (pageCount <= 1) {
      return firstPage.items;
    }

    final remainingPages = await Future.wait(
      [
        for (var page = 2; page <= pageCount; page++)
          searchItems(
            page: page,
            groupId: groupId,
            ageGroup: ageGroup,
            query: query,
          ),
      ],
    );

    return [
      ...firstPage.items,
      ...remainingPages.expand((page) => page.items),
    ];
  }

  /// ほしいもの一覧を再読み込みする.
  Future<void> refreshSearchItems() async {
    // すべての要素を再読み込み
    ref
      ..invalidate(searchItemsProvider)
      ..invalidate(searchAllItemsProvider);

    // 最初のページ文のデータが取得できるまでは待機
    return ref.read(searchItemsProvider(page: 1).future);
  }

  /// 欲しい物の取得
  Future<Item?> fetch({
    required GroupId? groupId,
    required ItemId itemId,
    required AgeGroup ageGroup,
  }) {
    if (groupId == null) {
      throw const BusinessException(BusinessExceptionType.notSelectedGroup);
    }

    return ref
        .read(itemRepositoryProvider)
        .fetchByGroupIdAndItemId(
          groupId: groupId,
          itemId: itemId,
          ageGroup: ageGroup,
        );
  }

  /// 欲しい物の追加
  Future<void> add({
    List<SelectedImageModel>? selectedImages,
    required String name,
    String? wanterName,
    required double wishRank,
    String? wishSeason,
    DateTime? wishDate,
    List<String>? urls,
    Map<String, String?>? urlThumbnails,
    String? memo,
    required GenerateItemDetailRoute generateItemDetailRoute,
  }) => execute(
    ref,
    action: () async {
      // 登録数上限判定
      await _validateItemCount();

      // グループ所属判定
      final groupId = await ref.read(
        currentGroupProvider.selectAsync((group) => group?.id),
      );
      if (groupId == null) {
        throw const BusinessException(BusinessExceptionType.notSelectedGroup);
      }

      // アップロード画像の変換(登録時は全件新規登録)
      final uploadImages = selectedImages
          ?.map((e) => e.uploadFile)
          .nonNulls
          .toList();

      // ドキュメントの登録
      final item = await ref
          .read(itemRepositoryProvider)
          .add(
            groupId: groupId,
            uploadImages: uploadImages,
            name: name,
            wanterName: wanterName,
            wishRank: wishRank,
            wishSeason: wishSeason,
            wishDate: wishDate,
            urls: urls,
            urlThumbnails: urlThumbnails,
            memo: memo,
          );

      // Providerへの反映
      ref
        ..invalidate(itemProvider)
        ..invalidate(searchItemsProvider)
        ..invalidate(searchAllItemsProvider);

      // 通知処理
      final itemDetailPath = generateItemDetailRoute(item.id);
      final user = ref.read(authUserProvider).value;
      await ref
          .read(messagingServiceProvider)
          .sendMessage(
            groupId: groupId,
            title: i18n.item.notificationAddItemBody(name: user.dispName),
            body: name,
            userId: user!.id,
            target: NotificationTarget.all,
            event: NotificationEvent.addWishItem,
            path: itemDetailPath,
          );
    },
  );

  /// 欲しい物の更新
  Future<void> update({
    required ItemId itemId,
    List<SelectedImageModel>? selectedImages,
    required String name,
    String? wanterName,
    required double wishRank,
    String? wishSeason,
    DateTime? wishDate,
    List<String>? urls,
    Map<String, String?>? urlThumbnails,
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

      // 既存画像とアップロード済画像に分ける
      final images = selectedImages?.map((e) => e.savedImage).nonNulls.toList();
      final uploadImages = selectedImages
          ?.map((e) => e.uploadFile)
          .nonNulls
          .toList();

      // ドキュメントの更新
      await ref
          .read(itemRepositoryProvider)
          .update(
            itemId: itemId,
            groupId: groupId,
            images: images,
            uploadImages: uploadImages,
            name: name,
            wanterName: wanterName,
            wishRank: wishRank,
            wishSeason: wishSeason,
            wishDate: wishDate,
            urls: urls,
            urlThumbnails: urlThumbnails,
            memo: memo,
          );

      // Providerへの反映
      refreshItemProviders();
    },
  );

  /// 欲しい物を別のグループへコピー
  Future<void> copyToGroup({
    required Item item,
    required Group targetGroup,
  }) => _transferToGroup(
    item: item,
    targetGroup: targetGroup,
    deleteSource: false,
  );

  /// 欲しい物を別のグループへ移動
  Future<void> moveToGroup({
    required Item item,
    required Group targetGroup,
  }) => _transferToGroup(
    item: item,
    targetGroup: targetGroup,
    deleteSource: true,
  );

  Future<void> _transferToGroup({
    required Item item,
    required Group targetGroup,
    required bool deleteSource,
  }) => execute(
    ref,
    action: () async {
      final sourceGroup = await ref.read(currentGroupProvider.future);
      if (sourceGroup == null) {
        throw const BusinessException(BusinessExceptionType.notSelectedGroup);
      }
      if (sourceGroup.id == targetGroup.id) {
        throw ArgumentError.value(
          targetGroup.id,
          'targetGroup',
          'The source and target groups must be different.',
        );
      }

      await _validateItemCount(group: targetGroup);

      final storageService = ref.read(storageServiceProvider);
      final uploadImages = await Future.wait<XFile>(
        item.images
                ?.map((image) => storageService.downloadImage(image.id))
                .toList() ??
            <Future<XFile>>[],
      );

      await ref
          .read(itemRepositoryProvider)
          .add(
            groupId: targetGroup.id,
            uploadImages: uploadImages,
            name: item.name,
            wanterName: item.wanterName,
            wishRank: item.wishRank,
            wishSeason: item.wishSeason,
            wishDate: item.wishDate,
            urls: item.urls,
            urlThumbnails: item.urlThumbnails,
            memo: item.memo,
          );

      // コピーが完了した場合のみ移動元を削除する
      if (deleteSource) {
        await ref
            .read(itemRepositoryProvider)
            .delete(groupId: sourceGroup.id, itemId: item.id);
      }

      ref
        ..invalidate(groupProvider)
        ..invalidate(joinGroupsProvider);
      refreshItemProviders();
    },
  );

  /// 欲しい物の削除
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
          .read(itemRepositoryProvider)
          .delete(groupId: groupId, itemId: itemId);

      // Providerへの反映
      refreshItemProviders();
    },
  );

  /// ほしい人のサジェストを取得する
  Future<List<String>> fetchWanterNameHistories({required GroupId groupId}) {
    return ref
        .read(itemRepositoryProvider)
        .fetchWanterNameHistories(groupId: groupId);
  }

  /// 欲しい物の登録数上限を検証
  Future<void> _validateItemCount({Group? group}) async {
    final validateGroup = group ?? await ref.read(currentGroupProvider.future);

    final isPremium = validateGroup?.premium == true;
    final overItemCount =
        validateGroup?.itemCount != null &&
        validateGroup!.itemCount! >= itemConfig.limitItemCount;

    if (!isPremium && overItemCount) {
      throw const BusinessException(
        BusinessExceptionType.registrationItemPolicyLimitOver,
      );
    }
  }

  /// 各種欲しいものを管理しているProviderのリフレッシュ
  void refreshItemProviders() {
    // Providerへの反映
    ref
      ..invalidate(itemProvider)
      ..invalidate(searchItemsProvider)
      ..invalidate(searchAllItemsProvider);
  }
}
