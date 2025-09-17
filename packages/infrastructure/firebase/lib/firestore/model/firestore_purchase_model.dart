import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/item.dart';

import '../converter/json_key.dart';

part 'firestore_purchase_model.freezed.dart';
part 'firestore_purchase_model.g.dart';

/// `/groups/{groupId}/purchases/{purchaseId}`ドキュメントのモデル
@freezed
abstract class FirestorePurchaseModel with _$FirestorePurchaseModel {
  const factory FirestorePurchaseModel({
    required String id,
    int? price,
    String? buyerName,
    @timestampKey DateTime? planDate,
    required bool surprise,
    @timestampKey DateTime? sentAt,
    String? memo,
    required String uid,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  }) = _FirestorePurchaseModel;

  factory FirestorePurchaseModel.fromJson(Map<String, dynamic> json) =>
      _$FirestorePurchaseModelFromJson(json);
}

extension FirestorePurchaseModelX on FirestorePurchaseModel {
  /// ドメイン層への変換
  Purchase toDomainModel() => Purchase(
    id: id,
    price: price,
    buyerName: buyerName,
    planDate: planDate,
    surprise: surprise,
    sentAt: sentAt,
    memo: memo,
    uid: uid,
    createdAt: createdAt!,
    updatedAt: updatedAt!,
  );

  /// `FieldValue`による更新が保留中か否か
  bool get fieldValuePending => createdAt == null || updatedAt == null;
}
