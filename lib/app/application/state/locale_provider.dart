import 'package:family_wish_list/l10n/app_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 端末の言語設定を管理
final l10nProvider = StateProvider<L10n>((ref) {
  return lookupL10n(L10n.supportedLocales.first);
});
