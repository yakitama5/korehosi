import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/user.dart';

import '../value_object/purchase_status.dart';

part 'purchase.freezed.dart';

extension type PurchaseId(String value) {}

/// ほしい物の購入情報
@freezed
abstract class Purchase with _$Purchase {
  const factory Purchase({
    required PurchaseId id,
    int? price,
    String? buyerName,
    DateTime? planDate,
    required bool surprise,
    DateTime? sentAt,
    String? memo,
    required String uid,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Purchase;
}

/// ほしい物の購入情報を利用しやすい形にするための拡張
extension PurchaseX on Purchase? {
  /// 購入状況
  PurchaseStatus status(AgeGroup ageGroup) {
    final adultStatus = _adultStatus;
    final childStatus = switch (adultStatus) {
      PurchaseStatus.purchased => PurchaseStatus.purchased,
      PurchaseStatus.notPurchased || PurchaseStatus.purchasePlan =>
        this?.surprise == true ? PurchaseStatus.notPurchased : adultStatus,
    };

    return switch (ageGroup) {
      AgeGroup.adult => adultStatus,
      AgeGroup.child => childStatus,
    };
  }

  PurchaseStatus get _adultStatus {
    if (this == null) {
      return PurchaseStatus.notPurchased;
    }

    if (this!.sentAt != null) {
      return PurchaseStatus.purchased;
    } else if (this!.planDate != null) {
      return PurchaseStatus.purchasePlan;
    }

    return PurchaseStatus.notPurchased;
  }
}
