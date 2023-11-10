import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/purchase.dart';

part 'purchase_repository.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
PurchaseRepository purchaseRepository(PurchaseRepositoryRef ref) =>
    // アプリ起動時 or テストときに `override` することを前提に利用
    throw UnimplementedError();

/// 欲しい物の購入に関するリポジトリ
abstract class PurchaseRepository {
  /// 欲しい物のIDを指定して取得
  Stream<Purchase?> fetchByItemId({
    required String groupId,
    required String itemId,
  });

  /// 欲しい物のIDを指定して取得
  /// (子供が参照する情報を取得)
  Stream<Purchase?> fetchByItemIdForChild({
    required String groupId,
    required String itemId,
  });

  /// 追加
  Future<void> add({
    required String groupId,
    required String itemId,
    int? price,
    String? buyerName,
    DateTime? planDate,
    required bool surprise,
    DateTime? sentAt,
    String? memo,
    required String uid,
  });

  /// 更新
  Future<void> update({
    required String groupId,
    required String purchaseId,
    int? price,
    String? buyerName,
    DateTime? planDate,
    required bool surprise,
    DateTime? sentAt,
    String? memo,
    required String uid,
  });

  /// 削除
  Future<void> delete({
    required String groupId,
    required String purchaseId,
  });
}
