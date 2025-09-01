import 'package:cores_domain/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../converter/json_key.dart';

part 'firestore_group_model.freezed.dart';
part 'firestore_group_model.g.dart';

/// `/groups/{groupId}`ドキュメントのモデル
@freezed
abstract class FirestoreGroupModel with _$FirestoreGroupModel {
  const factory FirestoreGroupModel({
    required String id,
    required String name,
    required List<String> joinUids,
    required String ownerUid,
    int? itemCount,
    required bool premium,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  }) = _FirestoreGroupModel;

  factory FirestoreGroupModel.fromJson(Map<String, dynamic> json) =>
      _$FirestoreGroupModelFromJson(json);
}

extension FirestoreGroupModelX on FirestoreGroupModel {
  /// ドメイン層で定義しているエンティティへの変換
  Group toDomainModel() => Group(
    id: id,
    name: name,
    joinUids: joinUids,
    ownerUid: ownerUid,
    itemCount: itemCount,
    premium: premium,
    createdAt: createdAt!,
    updatedAt: updatedAt!,
  );

  /// `FieldValue`による更新が保留中か否か
  bool get fieldValuePending => createdAt == null || updatedAt == null;
}
