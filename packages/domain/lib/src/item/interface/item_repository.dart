import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_domain/src/common/value_object/page_info.dart';
import 'package:packages_domain/src/item/value_object/items_search_query.dart';
import 'package:packages_domain/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/item.dart';

part 'item_repository.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
ItemRepository itemRepository(Ref ref) =>
    // アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// ほしい物を管理するリポジトリ
abstract class ItemRepository {
  // グループ内のほしいものを検索
  Future<PageInfo<Item>> searchItems({
    required int page,
    required String groupId,
    required AgeGroup ageGroup,
    required ItemsSearchQuery query,
  });

  /// グループ内のほしい物を取得
  Stream<List<Item>> fetchByGroupId({required String groupId});

  /// グループ内のほしい物を取得
  /// (一意指定)
  Stream<Item?> fetchByGroupIdAndItemId({
    required String groupId,
    required String itemId,
  });

  /// ほしい物の一意IDを発番する
  Future<String> generateItemId({required String groupId});

  /// ほしい物を追加
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

  /// ほしい物を更新
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

  /// ほしい物を削除
  Future<void> delete({required String groupId, required String itemId});
}
