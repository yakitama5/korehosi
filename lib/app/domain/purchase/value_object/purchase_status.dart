import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// 欲しい物の購入状況
enum PurchaseStatus {
  notPurchased,
  purchasePlan,
  purchased,
}

extension PurchaseStatusX on PurchaseStatus {
  String localeName(L10n l10n) {
    switch (this) {
      case PurchaseStatus.notPurchased:
        return l10n.notPurchased;
      case PurchaseStatus.purchasePlan:
        return l10n.purchasePlan;
      case PurchaseStatus.purchased:
        return l10n.purchased;
    }
  }

  IconData get iconData {
    switch (this) {
      case PurchaseStatus.notPurchased:
        return Icons.remove_shopping_cart_outlined;
      case PurchaseStatus.purchasePlan:
        return Icons.shopping_cart_outlined;
      case PurchaseStatus.purchased:
        return Icons.shopping_cart;
    }
  }
}
