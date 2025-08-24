import 'package:family_wish_list/l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

L10n useL10n() {
  return L10n.of(useContext())!;
}
