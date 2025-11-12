import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infrastructure_firebase/src/common/converter/json_key.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/user.dart';

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
    id: GroupId(id),
    name: name,
    joinUids: joinUids.map(UserId.new).toList(),
    ownerUid: UserId(ownerUid),
    itemCount: itemCount,
    premium: premium,
    createdAt: createdAt!,
    updatedAt: updatedAt!,
  );

  /// `FieldValue`による更新が保留中か否か
  bool get fieldValuePending => createdAt == null || updatedAt == null;
}
