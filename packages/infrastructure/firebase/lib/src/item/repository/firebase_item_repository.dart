import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cross_file/cross_file.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infrastructure_firebase/src/common/enum/firestore_columns.dart';
import 'package:infrastructure_firebase/src/common/state/firebase_storage_provider.dart';
import 'package:infrastructure_firebase/src/common/state/firestore_provider.dart';
import 'package:infrastructure_firebase/src/item/model/firestore_item_model.dart';
import 'package:infrastructure_firebase/src/item/state/firestore_deleted_item_provider.dart';
import 'package:infrastructure_firebase/src/item/state/firestore_item_provider.dart';
import 'package:packages_core/util.dart';
import 'package:packages_domain/common.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/item.dart';
import 'package:packages_domain/user.dart';

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
      ItemOrderKey.createdAt => FirestoreColumns.createdAt.fieldName,
    };
    final descending = query.itemsOrder.sortOrder == SortOrder.desc;

    final limit = page * pageSize;
    final offset = (page - 1) * pageSize;

    // 明細の取得
    var itemsQuery = ref
        .read(itemCollectionRefProvider(groupId: groupId))
        .orderBy(sortFieldName, descending: descending);

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
    final docs =
        (await itemsQuery
                // ページング (読み取りコストはかかるが、オフセット方を採用する)
                .limit(limit)
                .get())
            .docs
            .skip(offset);

    final items = await Future.wait(
      docs.map((e) async {
        // 購入情報の取得
        final itemId = ItemId(e.id);
        final purchase = await _purchaseRepository.fetchByItemId(
          groupId: groupId,
          itemId: itemId,
        );

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

        return e.data().toDomainModel(purchase: purchase, images: images);
      }).toList(),
    );

    final filterdItems = items.where((e) {
      final purchaseStatus = e.purchase.status;
      return query.purchaseStatuses.contains(purchaseStatus);
    }).toList();

    return PageInfo(items: filterdItems, totalCount: totalCount.count ?? 0);
  }

  @override
  Stream<List<Item>> fetchByGroupId({required GroupId groupId}) {
    return ref
        .read(itemCollectionRefProvider(groupId: groupId))
        .snapshots()
        // 読み込み中のドキュメントが存在する場合はスキップ
        .where(
          (s) => s.docs
              .where((element) => element.data().fieldValuePending)
              .isEmpty,
        )
        .map((snap) => snap.docs.map((e) => e.data().toDomainModel()).toList());
  }

  @override
  Future<Item?> fetchByGroupIdAndItemId({
    required GroupId groupId,
    required ItemId itemId,
  }) {
    return ref
        .read(itemDocumentRefProvider(groupId: groupId, itemId: itemId))
        .get()
        .then((snap) => snap.data()?.toDomainModel());
  }

  @override
  Future<Item> add({
    required GroupId groupId,
    List<XFile>? uploadImages,
    required String name,
    String? wanterName,
    required double wishRank,
    String? wishSeason,
    List<String>? urls,
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
      wanterName: wanterName,
      wishSeason: wishSeason,
    );

    // 登録
    await docRef.set(docModel);

    // 結果を返却
    final addedDoc = await docRef.get(
      const GetOptions(
        serverTimestampBehavior: ServerTimestampBehavior.estimate,
      ),
    );
    return addedDoc.data()!.toDomainModel();
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
    List<String>? urls,
    String? memo,
  }) async {
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
      wanterName: wanterName,
      wishSeason: wishSeason,
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
    final firestore = ref.read(firestoreProvider);
    await firestore.runTransaction((transaction) async {
      // 削除前の状態を保持
      final docRef = ref.read(
        itemDocumentRefProvider(groupId: groupId, itemId: itemId),
      );
      final delDocRef = ref.read(
        ditemDocumentRefProvider(groupId: groupId, itemId: itemId),
      );
      final doc = await transaction.get(docRef);

      transaction
          // ドキュメントの削除
          .delete(docRef)
          // 削除用ドキュメントの追加
          .set<FirestoreItemModel>(delDocRef, doc.data()!);
    });
  }

  Future<List<ImageId>> _uploadItemImage(
    List<XFile>? uploadImages,
    GroupId groupId,
    ItemId itemId,
  ) async {
    return Future.wait<ImageId>(
      uploadImages?.map((e) async {
            final path = 'group/$groupId/item/$itemId/${uuid.v4()}';
            return ref
                .read(storageServiceProvider)
                .uploadImage(ImageId(path), e);
          }).toList() ??
          [],
    );
  }
}
