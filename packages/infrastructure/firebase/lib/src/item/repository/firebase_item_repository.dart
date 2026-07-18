import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cross_file/cross_file.dart';
import 'package:infrastructure_firebase/src/common/enum/firestore_columns.dart';
import 'package:infrastructure_firebase/src/common/state/firebase_storage_provider.dart';
import 'package:infrastructure_firebase/src/item/model/firestore_item_model.dart';
import 'package:infrastructure_firebase/src/item/state/firestore_item_provider.dart';
import 'package:infrastructure_firebase/src/item/state/firestore_wanter_names_provider.dart';
import 'package:packages_core/util.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/item.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod/riverpod.dart';

/// Firebaseを利用したリポジトリの実装
class FirebaseItemRepository implements ItemRepository {
  const FirebaseItemRepository(this.ref);

  final Ref ref;

  PurchaseRepository get _purchaseRepository =>
      ref.read(purchaseRepositoryProvider);

  @override
  Future<PageInfo<Item>> searchItems({
    required int page,
    required int pageSize,
    required GroupId groupId,
    required AgeGroup ageGroup,
    required ItemsSearchQuery query,
  }) async {
    final sortFieldName = switch (query.itemsOrder.key) {
      ItemOrderKey.name => 'name',
      ItemOrderKey.wishRank => 'wishRank',
      ItemOrderKey.wishDate => null,
      ItemOrderKey.createdAt => FirestoreColumns.createdAt.fieldName,
    };
    final descending = query.itemsOrder.sortOrder == SortOrder.desc;

    final limit = page * pageSize;
    final offset = (page - 1) * pageSize;

    // 明細の取得
    final purchaseStatusField = switch (ageGroup) {
      AgeGroup.child => 'childViewPurchaseStatus',
      AgeGroup.adult => 'purchaseStatus',
    };
    var itemsQuery = ref
        .read(itemCollectionRefProvider(groupId: groupId))
        .where(
          purchaseStatusField,
          whereIn: query.purchaseStatuses.map((e) => e.name),
        );

    // 絞り込み
    if (query.minimumWishRank != null) {
      itemsQuery = itemsQuery.where(
        'wishRank',
        isGreaterThanOrEqualTo: query.minimumWishRank,
      );
    }

    // 全件数の取得
    final totalCount = await itemsQuery.count().get();

    // データの取得
    late final Iterable<QueryDocumentSnapshot<FirestoreItemModel>> docs;
    if (query.itemsOrder.key == ItemOrderKey.wishDate) {
      final sortedDocs = (await itemsQuery.get()).docs
        ..sort(
          (left, right) => compareWishDates(
            left.data().wishDate,
            right.data().wishDate,
            descending: descending,
          ),
        );
      docs = sortedDocs.skip(offset).take(pageSize);
    } else {
      docs =
          (await itemsQuery
                  .orderBy(sortFieldName!, descending: descending)
                  // ページング (読み取りコストはかかるが、オフセット方を採用する)
                  .limit(limit)
                  .get())
              .docs
              .skip(offset);
    }

    final items = await Future.wait(
      docs.map((e) async {
        // 購入詳細は大人だけが取得する。子どもは安全な投影値だけを使う。
        final itemId = ItemId(e.id);
        final purchase = ageGroup == AgeGroup.adult
            ? await _purchaseRepository.fetchByItemId(
                groupId: groupId,
                itemId: itemId,
              )
            : null;

        // 画像をURL化
        final storage = ref.read(firebaseStorageProvider);
        final images = await Future.wait<ItemImage>(
          e.data().imagesPath?.map((path) async {
                final id = ImageId(path);
                final url = await storage.ref(path).getDownloadURL();

                return ItemImage(id: id, url: url);
              }).toList() ??
              List.empty(),
        );

        return e.data().toDomainModel(
          purchase: purchase,
          images: images,
          purchaseStatus: ageGroup == AgeGroup.adult
              ? purchase.status(ageGroup)
              : e.data().childViewPurchaseStatus,
        );
      }).toList(),
    );

    return PageInfo(items: items, totalCount: totalCount.count ?? 0);
  }

  @override
  Future<Item?> fetchByGroupIdAndItemId({
    required GroupId groupId,
    required ItemId itemId,
    required AgeGroup ageGroup,
  }) async {
    final snap = await ref
        .read(itemDocumentRefProvider(groupId: groupId, itemId: itemId))
        .get();

    if (!snap.exists) {
      return null;
    }

    // 購入詳細は大人だけが取得する。子どもは安全な投影値だけを使う。
    final item = snap.data()!;
    final purchase = ageGroup == AgeGroup.adult
        ? await _purchaseRepository.fetchByItemId(
            groupId: groupId,
            itemId: itemId,
          )
        : null;

    // 画像をURL化
    final storage = ref.read(firebaseStorageProvider);
    final images = await Future.wait<ItemImage>(
      item.imagesPath?.map((path) async {
            final id = ImageId(path);
            final url = await storage.ref(path).getDownloadURL();

            return ItemImage(id: id, url: url);
          }).toList() ??
          List.empty(),
    );
    return item.toDomainModel(
      purchaseStatus: ageGroup == AgeGroup.adult
          ? purchase.status(ageGroup)
          : item.childViewPurchaseStatus,
      purchase: purchase,
      images: images,
    );
  }

  @override
  Future<Item> add({
    required GroupId groupId,
    List<XFile>? uploadImages,
    required String name,
    String? wanterName,
    required double wishRank,
    String? wishSeason,
    DateTime? wishDate,
    List<String>? urls,
    Map<String, String?>? urlThumbnails,
    String? memo,
  }) async {
    // 新しいドキュメントを取得
    final docRef = ref.read(itemDocumentRefProvider(groupId: groupId));
    final itemId = ItemId(docRef.id);

    // 新規画像分をアップロード
    final imageIds = await _uploadItemImage(uploadImages, groupId, itemId);

    // Firestore用のモデルに変換
    final docModel = FirestoreItemModel(
      id: itemId.value,
      name: name,
      wishRank: wishRank,
      imagesPath: imageIds.map((e) => e.value).toList(),
      memo: memo,
      urls: urls,
      urlThumbnails: urlThumbnails,
      wanterName: wanterName,
      wishSeason: wishSeason,
      wishDate: wishDate,
      purchaseStatus: PurchaseStatus.notPurchased,
      childViewPurchaseStatus: PurchaseStatus.notPurchased,
    );

    // 登録
    await docRef.set(docModel);

    // 結果を返却
    final addedDoc = await docRef.get(
      const GetOptions(
        serverTimestampBehavior: ServerTimestampBehavior.estimate,
      ),
    );
    return addedDoc.data()!.toDomainModel(
      purchaseStatus: PurchaseStatus.notPurchased,
    );
  }

  @override
  Future<void> update({
    required GroupId groupId,
    required ItemId itemId,
    List<ItemImage>? images,
    List<XFile>? uploadImages,
    required String name,
    String? wanterName,
    required double wishRank,
    String? wishSeason,
    DateTime? wishDate,
    List<String>? urls,
    Map<String, String?>? urlThumbnails,
    String? memo,
  }) async {
    // 更新前の内容を取得
    final prevItem = await ref
        .watch(itemDocumentRefProvider(groupId: groupId, itemId: itemId))
        .get();

    if (!prevItem.exists) {
      throw const BusinessException(BusinessExceptionType.updateTargetNotFound);
    }

    // 新規画像分をアップロード
    final uploadImageIds = await _uploadItemImage(
      uploadImages,
      groupId,
      itemId,
    );

    // 既存画像分の末尾に追加
    final imageIds = images?.map((e) => e.id).toList() ?? List<ImageId>.empty();
    final joinImageIds = imageIds + uploadImageIds;

    // Firestore用のモデルに変換
    final docModel = FirestoreItemModel(
      id: itemId.value,
      name: name,
      wishRank: wishRank,
      imagesPath: joinImageIds.map((e) => e.value).toList(),
      memo: memo,
      urls: urls,
      urlThumbnails: urlThumbnails,
      wanterName: wanterName,
      purchaseStatus: prevItem.data()!.purchaseStatus,
      childViewPurchaseStatus: prevItem.data()!.childViewPurchaseStatus,
      wishSeason: wishSeason,
      wishDate: wishDate,
    );

    // 更新
    return ref
        .read(itemDocumentRefProvider(groupId: groupId, itemId: itemId))
        .set(docModel);
  }

  @override
  Future<void> delete({
    required GroupId groupId,
    required ItemId itemId,
  }) async {
    // 子どもは購入詳細へアクセスできないため、クライアントではItemだけを
    // 削除する。対応する購入詳細はonWriteItemがAdmin SDKで削除する。
    await ref
        .read(itemDocumentRefProvider(groupId: groupId, itemId: itemId))
        .delete();
  }

  @override
  Future<List<String>> fetchWanterNameHistories({required GroupId groupId}) =>
      ref
          .watch(wanterNameCollectionRefProvider(groupId: groupId))
          .get()
          .then((snap) => snap.docs.map((doc) => doc.data().name).toList());

  Future<List<ImageId>> _uploadItemImage(
    List<XFile>? uploadImages,
    GroupId groupId,
    ItemId itemId,
  ) {
    return Future.wait<ImageId>(
      uploadImages?.map((e) {
            final path = 'group/$groupId/item/$itemId/${uuid.v4()}';
            return ref
                .read(storageServiceProvider)
                .uploadImage(ImageId(path), e);
          }).toList() ??
          [],
    );
  }
}

int compareWishDates(
  DateTime? left,
  DateTime? right, {
  required bool descending,
}) {
  if (left == null) {
    return right == null ? 0 : 1;
  }
  if (right == null) {
    return -1;
  }

  return descending ? right.compareTo(left) : left.compareTo(right);
}
