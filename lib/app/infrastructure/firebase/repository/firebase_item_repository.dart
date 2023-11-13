import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/item/entity/item.dart';
import '../../../domain/item/interface/item_repository.dart';
import '../firestore/model/firestore_item_model.dart';
import '../firestore/state/firestore.dart';
import '../firestore/state/firestore_deleted_item_provider.dart';
import '../firestore/state/firestore_item_provider.dart';

/// Firebaseを利用したリポジトリの実装
class FirebaseItemRepository implements ItemRepository {
  const FirebaseItemRepository(this.ref);

  final Ref ref;

  @override
  Stream<List<Item>> fetchByGroupId({required String groupId}) {
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
  Stream<Item?> fetchByGroupIdAndItemId({
    required String groupId,
    required String itemId,
  }) {
    return ref
        .read(itemDocumentRefProvider(groupId: groupId, itemId: itemId))
        .snapshots()
        .where((s) {
      // 読み込み中のドキュメントが存在する場合はスキップ
      final doc = s.data();
      return doc == null || !doc.fieldValuePending;
    }).map((snap) => snap.data()?.toDomainModel());
  }

  @override
  Future<String> generateItemId({required String groupId}) {
    final docRef = ref.read(itemDocumentRefProvider(groupId: groupId));
    return Future.value(docRef.id);
  }

  @override
  Future<Item> add({
    String? itemId,
    required String groupId,
    List<String>? imagesPath,
    required String name,
    String? wanterName,
    required double wishRank,
    String? wishSeason,
    List<String>? urls,
    String? memo,
  }) async {
    // IDが指定されていなければ、新しいドキュメントを取得
    final docRef =
        ref.read(itemDocumentRefProvider(groupId: groupId, itemId: itemId));

    // Firestore用のモデルに変換
    final docModel = FirestoreItemModel(
      id: docRef.id,
      name: name,
      wishRank: wishRank,
      imagesPath: imagesPath,
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
    required String groupId,
    required String itemId,
    List<String>? imagesPath,
    required String name,
    String? wanterName,
    required double wishRank,
    String? wishSeason,
    List<String>? urls,
    String? memo,
  }) {
    // Firestore用のモデルに変換
    final docModel = FirestoreItemModel(
      id: itemId,
      name: name,
      wishRank: wishRank,
      imagesPath: imagesPath,
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
  Future<void> delete({required String groupId, required String itemId}) async {
    final firestore = ref.read(firestoreProvider);
    await firestore.runTransaction((transaction) async {
      // 削除前の状態を保持
      final docRef =
          ref.read(itemDocumentRefProvider(groupId: groupId, itemId: itemId));
      final delDocRef =
          ref.read(ditemDocumentRefProvider(groupId: groupId, itemId: itemId));
      final doc = await transaction.get(docRef);

      transaction
          // ドキュメントの削除
          .delete(docRef)
          // 削除用ドキュメントの追加
          .set<FirestoreItemModel>(delDocRef, doc.data()!);
    });
  }
}
