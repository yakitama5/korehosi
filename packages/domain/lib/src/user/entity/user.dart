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
