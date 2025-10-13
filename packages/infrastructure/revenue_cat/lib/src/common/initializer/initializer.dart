import 'dart:io';

import 'package:infrastructure_revenue_cat/env/env.dart';
import 'package:packages_domain/common.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

final class RevenueCatInitializer {
  RevenueCatInitializer._();

  static Future<void> initialize(Flavor flavor, {required bool isWeb}) async {
    // Web版は課金は未対応
    if (isWeb) {
      return;
    }

    // 開発環境はスキップ
    if (flavor == Flavor.dev) {
      return;
    }

    late final PurchasesConfiguration configuration;
    if (Platform.isAndroid) {
      /// PlayStoreの課金情報キー
      configuration = PurchasesConfiguration(
        ProductionEnv.revenueCatKeyPlayStore,
      );
    } else if (Platform.isIOS) {
      configuration = PurchasesConfiguration(
        ProductionEnv.revenueCatKeyAppleStore,
      );
    } else {
      return;
    }
    await Purchases.configure(configuration);
  }
}
