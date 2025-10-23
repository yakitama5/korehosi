import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_object/age_group.dart';

part 'user.freezed.dart';

extension type UserId(String value) {}

/// ユーザー
@freezed
abstract class User with _$User {
  const factory User({
    required UserId id,
    required AgeGroup ageGroup,
    String? name,
    List<String>? joinGroupIds,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _User;
}
