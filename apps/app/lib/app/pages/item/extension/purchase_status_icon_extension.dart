import 'package:flutter/material.dart';
import 'package:packages_domain/item.dart';

extension PurchaseStatusIconExtension on PurchaseStatus {
  IconData get iconData => switch (this) {
    PurchaseStatus.notPurchased => Icons.remove_shopping_cart_outlined,
    PurchaseStatus.purchasePlan => Icons.shopping_cart_outlined,
    PurchaseStatus.purchased => Icons.shopping_cart,
  };
}
