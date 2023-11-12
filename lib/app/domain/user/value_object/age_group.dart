import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// 年齢層 (子供 or 大人)
enum AgeGroup {
  child,
  adult,
}

extension AgeGroupX on AgeGroup {
  String getLocaleName(L10n l) {
    switch (this) {
      case AgeGroup.child:
        return l.ageGroupChild;
      case AgeGroup.adult:
        return l.ageGroupAdult;
    }
  }
}
