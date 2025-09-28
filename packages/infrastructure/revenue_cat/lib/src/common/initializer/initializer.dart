import 'dart:io';

import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:packages_domain/core.dart';
import 'package:purchases_flutter/models/purchases_configuration.dart';

final class RevenueCatInitializer {
  RevenueCatInitializer._();

  static Future<void> initialize(Flavor flavor, bool isWeb) async {
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
      configuration = PurchasesConfiguration(revenueCatPlayStoreKey);
    } else if (Platform.isIOS) {
      configuration = PurchasesConfiguration(revenueCatAppStoreKey);
    } else {
      return;
    }
    await Purchases.configure(configuration);
  }
}
