import 'package:freezed_annotation/freezed_annotation.dart';

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
  PurchaseStatus get status {
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
