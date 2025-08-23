import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/item/entity/item.dart';
import '../converter/json_key.dart';

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
  Item toDomainModel() => Item(
        id: id,
        imagesPath: imagesPath,
        name: name,
        wanterName: wanterName,
        wishRank: wishRank,
        wishSeason: wishSeason,
        urls: urls,
        memo: memo,
        createdAt: createdAt!,
        updatedAt: updatedAt!,
      );

  /// `FieldValue`による更新が保留中か否か
  bool get fieldValuePending => createdAt == null || updatedAt == null;
}
