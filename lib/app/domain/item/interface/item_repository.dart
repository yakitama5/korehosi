import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/item.dart';

part 'item_repository.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
ItemRepository itemRepository(ItemRepositoryRef ref) =>
    // アプリ起動時 or テストときに `override` することを前提に利用
    throw UnimplementedError();

abstract class ItemRepository {
  Stream<List<Item>> fetchByGroupId({required String groupId});

  Stream<Item?> fetchByGroupIdAndItemId({
    required String groupId,
    required String itemId,
  });

  /// IDを発番する
  Future<String> generateItemId({required String groupId});

  /// 欲しい物を追加
  /// ID項目は任意指定とし、指定されなかったら発番する
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
  });

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
  });

  Future<void> delete({
    required String groupId,
    required String itemId,
  });
}
