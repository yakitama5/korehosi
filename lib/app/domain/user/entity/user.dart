import 'package:family_wish_list/l10n/app_localizations.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/age_group.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// ユーザー
@freezed
class User with _$User {
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
  String dispName(L10n l10n) {
    // ユーザー自体が存在しなければ削除済ユーザーとして表示する
    if (this == null) {
      return l10n.deletedUser;
    }

    // 名称が未設定の場合は未設定のラベルを表示
    return this!.name ?? l10n.unset;
  }
}
