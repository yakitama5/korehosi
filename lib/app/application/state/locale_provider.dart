import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final l10nProvider = StateProvider<L10n>((ref) {
  return lookupL10n(L10n.supportedLocales.first);
});
