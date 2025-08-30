import 'package:family_wish_list/i18n/strings.g.dart';
import 'package:flutter/material.dart';

/// 欲しい物の購入状況
enum PurchaseStatus {
  notPurchased,
  purchasePlan,
  purchased;

  String get localeName => switch (this) {
        PurchaseStatus.notPurchased => i18n.app.notPurchased,
        PurchaseStatus.purchasePlan => i18n.app.purchasePlan,
        PurchaseStatus.purchased => i18n.app.purchased,
      };

  IconData get iconData => switch (this) {
        PurchaseStatus.notPurchased => Icons.remove_shopping_cart_outlined,
        PurchaseStatus.purchasePlan => Icons.shopping_cart_outlined,
        PurchaseStatus.purchased => Icons.shopping_cart,
      };
}
