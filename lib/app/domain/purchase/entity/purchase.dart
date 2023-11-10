import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/purchase_status.dart';

part 'purchase.freezed.dart';
part 'purchase.g.dart';

@freezed
class Purchase with _$Purchase {
  const factory Purchase({
    required String id,
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

  factory Purchase.fromJson(Map<String, dynamic> json) =>
      _$PurchaseFromJson(json);
}

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
