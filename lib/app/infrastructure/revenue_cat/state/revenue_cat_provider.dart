import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'revenue_cat_provider.g.dart';

@Riverpod(keepAlive: true)
Purchases revenueCat(RevenueCatRef ref) {
  return Purchases();
}
