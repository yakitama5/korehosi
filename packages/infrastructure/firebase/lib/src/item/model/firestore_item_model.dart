import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infrastructure_firebase/src/common/converter/json_key.dart';
import 'package:packages_domain/item.dart';

part 'firestore_item_model.freezed.dart';
part 'firestore_item_model.g.dart';

/// `/groups/{groupId}/items/{itemId}`ドキュメントのモデル
@freezed
abstract class FirestoreItemModel with _$FirestoreItemModel {
  const factory FirestoreItemModel({
    required String id,
    List<String>? imagesPath,
    required String name,
    String? wanterName,
    required double wishRank,
    String? wishSeason,
    List<String>? urls,
    String? memo,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  }) = _FirestoreItemModel;

  factory FirestoreItemModel.fromJson(Map<String, dynamic> json) =>
      _$FirestoreItemModelFromJson(json);
}

extension FirestoreItemModelX on FirestoreItemModel {
  /// ドメイン層への変換
  Item toDomainModel({Purchase? purchase, List<ItemImage>? images}) => Item(
    id: ItemId(id),
    images: images,
    name: name,
    wanterName: wanterName,
    wishRank: wishRank,
    wishSeason: wishSeason,
    urls: urls,
    memo: memo,
    purchase: purchase,
    createdAt: createdAt!,
    updatedAt: updatedAt!,
  );

  /// `FieldValue`による更新が保留中か否か
  bool get fieldValuePending => createdAt == null || updatedAt == null;
}
