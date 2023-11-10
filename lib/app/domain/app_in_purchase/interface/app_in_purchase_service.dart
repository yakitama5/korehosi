import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entity/app_in_purchase_product.dart';

part 'app_in_purchase_service.g.dart';

/// DI用 (依存性逆転のためドメイン層に定義)
@Riverpod(keepAlive: true)
AppInPurchaseService appInPurchaseService(AppInPurchaseServiceRef ref) =>
// アプリ起動時 or テスト時に `override` することを前提に利用
    throw UnimplementedError();

/// アプリ内課金を提供するサービス
abstract class AppInPurchaseService {
  /// 「欲しい物の登録数上限解除」の商品情報を取得
  Future<AppInPurchaseProduct?> fetchLimitedReleasePlan();

  /// 「欲しい物の登録数上限解除」を購入
  Future<void> purchaseLimitedReleasePlan();

  /// サインイン
  Future<void> signIn({required String userId});

  /// サインアウト
  Future<void> signOut();
}
