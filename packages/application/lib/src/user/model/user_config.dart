import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:packages_domain/user.dart';

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
