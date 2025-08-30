import 'package:flutter_app/i18n/strings.g.dart';

/// 年齢層 (子供 or 大人)
enum AgeGroup {
  child,
  adult;

  String get localeName => switch (this) {
    AgeGroup.child => i18n.app.ageGroupChild,
    AgeGroup.adult => i18n.app.ageGroupAdult,
  };
}
