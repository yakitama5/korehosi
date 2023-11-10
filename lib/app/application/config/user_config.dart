import '../../domain/user/value_object/age_group.dart';
import '../model/user/user_config.dart';

const userConfig = UserConfig(
  initialAgeGroup: AgeGroup.child,
  nameKey: 'name',
  ageGroupKey: 'age_group',
  maxNameLength: 30,
);
