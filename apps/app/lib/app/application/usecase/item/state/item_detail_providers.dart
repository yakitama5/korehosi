import 'package:cores_domain/item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../domain/purchase/entity/purchase.dart';
import '../../purchase/state/current_group_age_applicable_purchase_provider.dart';
import 'current_group_item_provider.dart';

part 'item_detail_providers.g.dart';

// ignore: avoid_classes_with_only_static_members
/// 欲しい物の明細を管理するProvider
/// 明細を表示する画面郡で横断して利用する状態を管理する
/// IDを管理するProviderを `override`することを前提に処理を組む
class ItemDetailProviders {
  static AutoDisposeProvider<String?> get itemIdProvider => _itemIdProvider;
  static AutoDisposeFutureProvider<Item?> get itemProvider => _itemProvider;
  static AutoDisposeFutureProvider<Purchase?> get purchaseProvider =>
      _purchaseProvider;
}

/// 明細表示対象となる欲しい物のIDを管理するProvider
/// `override`前提の利用を強制する
@riverpod
String? _itemId(Ref ref) => throw UnimplementedError();

/// 明細表示対象となる欲しい物のEntityを管理するProvider
/// `_itemIdProvider`に依存する
@Riverpod(dependencies: [_itemId])
Future<Item?> _item(Ref ref) async {
  final itemId = ref.watch(_itemIdProvider);
  if (itemId == null) {
    return null;
  }
  return ref.watch(currentGroupItemProvider(itemId: itemId).future);
}

/// 明細表示対象となる欲しい物に属する購入情報のEntityを管理するProvider
/// `_itemIdProvider`に依存する
@Riverpod(dependencies: [_itemId])
Future<Purchase?> _purchase(Ref ref) async {
  final itemId = ref.watch(_itemIdProvider);
  if (itemId == null) {
    return null;
  }

  return ref.watch(
    currentGroupAgeApplicablePurchaseProvider(itemId: itemId).future,
  );
}
