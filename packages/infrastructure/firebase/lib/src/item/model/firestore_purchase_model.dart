import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infrastructure_firebase/src/common/converter/json_key.dart';
import 'package:packages_domain/item.dart';
import 'package:packages_domain/user.dart';

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
    id: PurchaseId(id),
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

  PurchaseStatus purchaseStatus({required AgeGroup ageGroup}) {
    // ドメインロジック利用のため、ドメインモデルへ変換
    final domainModel = Purchase(
      id: PurchaseId(id),
      price: price,
      buyerName: buyerName,
      planDate: planDate,
      surprise: surprise,
      sentAt: sentAt,
      memo: memo,
      uid: uid,
      // ダミー値の登録
      createdAt: DateTime(1990),
      updatedAt: DateTime(1990),
    );

    return domainModel.status(ageGroup);
  }

  /// `FieldValue`による更新が保留中か否か
  bool get fieldValuePending => createdAt == null || updatedAt == null;
}
