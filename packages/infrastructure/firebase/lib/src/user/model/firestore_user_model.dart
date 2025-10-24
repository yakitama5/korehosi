import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infrastructure_firebase/src/common/converter/json_key.dart';
import 'package:packages_domain/group.dart';
import 'package:packages_domain/user.dart';

part 'firestore_user_model.freezed.dart';
part 'firestore_user_model.g.dart';

/// `/users/{userId}`ドキュメントのモデル
@freezed
abstract class FirestoreUserModel with _$FirestoreUserModel {
  const factory FirestoreUserModel({
    required String id,
    required AgeGroup ageGroup,
    String? name,
    List<String>? joinGroupIds,
    @timestampKey DateTime? createdAt,
    @timestampKey DateTime? updatedAt,
  }) = _FirestoreUserModel;

  factory FirestoreUserModel.fromJson(Map<String, dynamic> json) =>
      _$FirestoreUserModelFromJson(json);
}

extension FirestoreUserModelX on FirestoreUserModel {
  /// ドメイン層への変換
  User toDomainModel() => User(
    id: UserId(id),
    ageGroup: ageGroup,
    name: name,
    joinGroupIds: joinGroupIds?.map(GroupId.new).toList(),
    createdAt: createdAt!,
    updatedAt: updatedAt!,
  );

  /// `FieldValue`による更新が保留中か否か
  bool get fieldValuePending => createdAt == null || updatedAt == null;
}
