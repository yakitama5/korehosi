import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/user/entity/user.dart';
import '../../../../domain/user/value_object/age_group.dart';
import '../converter/json_key.dart';

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
        id: id,
        ageGroup: ageGroup,
        name: name,
        joinGroupIds: joinGroupIds,
        createdAt: createdAt!,
        updatedAt: updatedAt!,
      );

  /// `FieldValue`による更新が保留中か否か
  bool get fieldValuePending => createdAt == null || updatedAt == null;
}
