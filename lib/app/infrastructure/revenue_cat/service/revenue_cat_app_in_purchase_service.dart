import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

import '../../../domain/app_in_purchase/entity/app_in_purchase_product.dart';
import '../../../domain/app_in_purchase/interface/app_in_purchase_service.dart';
import '../../../domain/exception/exceptions.dart';

/// 欲しい物の登録数上限解除プロダクトのキー
const _limitedReleasePlanOfferingsKey = 'familyWishList_once_premiumGroup_100';

/// 欲しい物の登録数上限解除パッケージのキー
const _limitedReleasePlanPackageKey = 'premiumGroups';

/// 欲しい物の登録数上限解除パッケージのキー
const _limitedReleasePlanEntitlementKey = 'premiumGroupPlan';

/// RevenueCatを利用したサービスの実装
class RevenueCatAppInPurchaseService implements AppInPurchaseService {
  const RevenueCatAppInPurchaseService(this.ref);

  final Ref ref;

  @override
  Future<AppInPurchaseProduct?> fetchLimitedReleasePlan() async {
    // アプリ内課金の商品情報を取得
    final offerings = await Purchases.getOfferings();
    final package = offerings.all[_limitedReleasePlanOfferingsKey]
        ?.getPackage(_limitedReleasePlanPackageKey);
    if (package == null) {
      return null;
    }

    // 変換
    return AppInPurchaseProduct(
      id: package.storeProduct.identifier,
      title: package.storeProduct.title,
      price: package.storeProduct.price,
    );
  }

  @override
  Future<void> purchaseLimitedReleasePlan() async {
    final offerings = await Purchases.getOfferings();
    final package = offerings.all[_limitedReleasePlanOfferingsKey]
        ?.getPackage(_limitedReleasePlanPackageKey);
    if (package == null) {
      throw BusinessException('Not exists purchase package');
    }

    final purchaserInfo = await Purchases.purchasePackage(package);
    if (purchaserInfo
            .entitlements.all[_limitedReleasePlanEntitlementKey]?.isActive !=
        true) {
      throw BusinessException('Not active');
    }
  }

  @override
  Future<void> signIn({required String userId}) => Purchases.logIn(userId);

  @override
  Future<void> signOut() => Purchases.logOut();
}
