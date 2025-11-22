import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'revenue_cat_provider.g.dart';

/// RevenueCat
/// テスト時にDIすることを考慮して、Providerとして定義
@Riverpod(keepAlive: true)
Purchases revenueCat(Ref ref) {
  return Purchases();
}
