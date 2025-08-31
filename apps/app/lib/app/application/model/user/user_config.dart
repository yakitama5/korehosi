import 'package:cores_domain/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_config.freezed.dart';

/// ユーザーの設定
@freezed
abstract class UserConfig with _$UserConfig {
  const factory UserConfig({
    required AgeGroup initialAgeGroup,
    required String nameKey,
    required String ageGroupKey,
    required int maxNameLength,
  }) = _UserConfig;
}
