import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// 並び順 (昇順 or 降順)
enum SortOrder {
  asc,
  desc,
}

extension SortOrderX on SortOrder {
  /// 表示名
  String localeName(L10n l10n) {
    switch (this) {
      case SortOrder.asc:
        return l10n.sortOrderAsc;
      case SortOrder.desc:
        return l10n.sortOrderDesc;
    }
  }
}
