import 'package:packages_application/src/item/state/item_provider.dart';
import 'package:packages_domain/item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'item_detail_providers.g.dart';

// ignore: avoid_classes_with_only_static_members
/// 欲しい物の明細を管理するProvider
/// 明細を表示する画面郡で横断して利用する状態を管理する
/// IDを管理するProviderを `override`することを前提に処理を組む
class ItemDetailProviders {
  static DetailPageItemIdProvider get itemIdProvider => _itemIdProvider;
  static DetailPageItemProvider get itemProvider => _itemProvider;
}

/// 明細表示対象となる欲しい物のIDを管理するProvider
/// `override`前提の利用を強制する
@Riverpod(name: '_itemIdProvider')
ItemId? detailPageItemId(Ref ref) => throw UnimplementedError();

/// 明細表示対象となる欲しい物のEntityを管理するProvider
/// `_itemIdProvider`に依存する
@Riverpod(dependencies: [detailPageItemId], name: '_itemProvider')
Future<Item?> detailPageItem(Ref ref) async {
  final itemId = ref.watch(_itemIdProvider);
  if (itemId == null) {
    return null;
  }
  return ref.watch(itemProvider(itemId: itemId).future);
}
