import 'package:packages_application/src/user/model/user_config.dart';
import 'package:packages_domain/user.dart';

/// ユーザーの設定
const userConfig = UserConfig(
  initialAgeGroup: AgeGroup.child,
  nameKey: 'name',
  ageGroupKey: 'age_group',
  maxNameLength: 30,
);
