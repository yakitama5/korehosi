import 'package:packages_domain/user.dart';

import '../model/user/user_config.dart';

/// ユーザーの設定
const userConfig = UserConfig(
  initialAgeGroup: AgeGroup.child,
  nameKey: 'name',
  ageGroupKey: 'age_group',
  maxNameLength: 30,
);
