import 'package:cores_domain/exception.dart';
import 'package:cores_domain/item.dart';
import 'package:cores_domain/notification.dart';
import 'package:flutter_app/app/application/usecase/user/extension/user_mixin.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../domain/service/config_service.dart';
import '../../../domain/service/storage_service.dart';
import '../../../presentation/routes/importer.dart';
import '../../config/item_image_config.dart';
import '../../model/item/selected_image_model.dart';
import '../group/state/current_group_provider.dart';
import '../run_usecase_mixin.dart';
import '../user/state/auth_user_provider.dart';

part 'item_usecase.g.dart';

@riverpod
ItemUsecase itemUsecase(Ref ref) => ItemUsecase(ref);

/// ほしい物に関するユースケース
class ItemUsecase with RunUsecaseMixin {
  ItemUsecase(this.ref);

  final Ref ref;

  /// 欲しい物一覧の取得
  Stream<List<Item>> fetchAll({required String groupId}) =>
      ref.read(itemRepositoryProvider).fetchByGroupId(groupId: groupId);

  /// 欲しい物の追加
  Future<void> add({
    List<SelectedImageModel>? selectedImages,
    required String name,
    String? wanterName,
    required double wishRank,
    String? wishSeason,
    List<String>? urls,
    String? memo,
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
        throw UpdateTargetNotFoundException();
      }

      // 画像をアップロードするため、先にIDを発番する
      final itemId = await ref
          .read(itemRepositoryProvider)
          .generateItemId(groupId: groupId);

      // 画像をアップロードして、ストレージのパスに変換する
      final imagesPath = await _uploadImages(
        groupId: groupId,
        itemId: itemId,
        selectedImages: selectedImages,
      );

      // ドキュメントの登録
      await ref
          .read(itemRepositoryProvider)
          .add(
            // 先に取得していたIDを指定して登録
            itemId: itemId,
            groupId: groupId,
            imagesPath: imagesPath,
            name: name,
            wanterName: wanterName,
            wishRank: wishRank,
            wishSeason: wishSeason,
            urls: urls,
            memo: memo,
          );

      // 通知処理
      // TODO(yaiktama5): 必須ではないがトランザクション処理を行うこと
      final user = ref.read(authUserProvider).value;
      await ref
          .read(messagingServiceProvider)
          .sendMessage(
            groupId: groupId,
            title: i18n.app.notificationAddItemBody(name: user.dispName),
            body: name,
            uid: user!.id,
            target: NotificationTarget.all,
            event: NotificationEvent.addWishItem,
            path: ItemRouteData(itemId).location,
          );
    },
  );

  /// 欲しい物の更新
  Future<void> update({
    required String itemId,
    List<SelectedImageModel>? selectedImages,
    required String name,
    String? wanterName,
    required double wishRank,
    String? wishSeason,
    List<String>? urls,
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

      // 画像をアップロードして、ストレージのパスに変換する
      final imagesPath = await _uploadImages(
        groupId: groupId,
        itemId: itemId,
        selectedImages: selectedImages,
      );

      // ドキュメントの更新
      await ref
          .read(itemRepositoryProvider)
          .update(
            itemId: itemId,
            groupId: groupId,
            imagesPath: imagesPath,
            name: name,
            wanterName: wanterName,
            wishRank: wishRank,
            wishSeason: wishSeason,
            urls: urls,
            memo: memo,
          );
    },
  );

  /// 欲しい物の削除
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

      return ref
          .read(itemRepositoryProvider)
          .delete(groupId: groupId, itemId: itemId);
    },
  );

  /// 欲しい物の登録数上限を検証
  Future<void> _validateItemCount() async {
    final group = await ref.read(currentGroupProvider.future);
    final maxCount = await ref.read(configServiceProvider).fetchMaxItemCount();

    final isPremium = group?.premium == true;
    final overItemCount =
        group?.itemCount != null && group!.itemCount! >= maxCount;

    if (!isPremium && overItemCount) {
      throw BusinessException(i18n.app.businessErrorMessageOverItemCount);
    }
  }

  /// 画像のアップロード
  Future<List<String>?> _uploadImages({
    required String groupId,
    required String itemId,
    required List<SelectedImageModel>? selectedImages,
  }) async {
    if (selectedImages == null) {
      return null;
    }

    // 画像をアップロードして、ストレージのパスに変換する
    const uuid = Uuid();
    final asyncImagesPath = selectedImages.map((model) async {
      if (model.imagePath != null) {
        // アップロード済の場合はそのまま利用する
        return model.imagePath!;
      }

      // パスを設定
      final path = 'group/$groupId/item/$itemId/${uuid.v4()}';

      // 画像を圧縮
      final uint8List = await FlutterImageCompress.compressWithList(
        await model.uploadFile!.readAsBytes(),
        minWidth: itemIamgeConfig.minWidth,
        minHeight: itemIamgeConfig.minHeight,
        quality: itemIamgeConfig.quality,
      );

      // アップロード
      return ref.read(storageServiceProvider).uploadImage(path, uint8List);
    });
    return Future.wait(asyncImagesPath);
  }
}
