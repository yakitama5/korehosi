import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/user/value_object/age_group.dart';

part 'user_config.freezed.dart';

/// ユーザーの設定
@freezed
class UserConfig with _$UserConfig {
  const factory UserConfig({
    required AgeGroup initialAgeGroup,
    required String nameKey,
    required String ageGroupKey,
    required int maxNameLength,
  }) = _UserConfig;
}
