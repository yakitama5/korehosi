import 'package:flutter_app/i18n/strings.g.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/age_group.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// ユーザー
@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required AgeGroup ageGroup,
    String? name,
    List<String>? joinGroupIds,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

extension UserX on User? {
  String get dispName {
    // ユーザー自体が存在しなければ削除済ユーザーとして表示する
    if (this == null) {
      return i18n.app.deletedUser;
    }

    // 名称が未設定の場合は未設定のラベルを表示
    return this!.name ?? i18n.app.unset;
  }
}
