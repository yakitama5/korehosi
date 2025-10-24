import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infrastructure_firebase/src/common/converter/json_key.dart';
import 'package:packages_domain/group.dart';

part 'firestore_share_link_model.freezed.dart';
part 'firestore_share_link_model.g.dart';

/// `/shareLinks/{shareLinkId}`ドキュメントのモデル
@freezed
abstract class FirestoreShareLinkModel with _$FirestoreShareLinkModel {
  const factory FirestoreShareLinkModel({
    required String id,
    required String groupId,
    required int validDays,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  }) = _FirestoreShareLinkModel;

  factory FirestoreShareLinkModel.fromJson(Map<String, dynamic> json) =>
      _$FirestoreShareLinkModelFromJson(json);
}

extension FirestoreShareLinkModelX on FirestoreShareLinkModel {
  /// ドメイン層への変換
  ShareLink toDomainModel() => ShareLink(
    id: ShareLinkId(id),
    groupId: GroupId(groupId),
    validDays: validDays,
    createdAt: createdAt!,
    updatedAt: updatedAt!,
  );

  /// `FieldValue`による更新が保留中か否か
  bool get fieldValuePending => createdAt == null || updatedAt == null;
}
