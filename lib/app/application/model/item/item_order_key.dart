import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../order.dart';

/// 欲しい物一覧の並び替え種類
enum ItemOrderKey {
  name,
  wishRank,
  createdAt,
}

extension ItemOrderX on ItemOrderKey {
  /// 言語別の表示名
  String localeName(L10n l10n) {
    switch (this) {
      case ItemOrderKey.name:
        return l10n.orderKeyName;
      case ItemOrderKey.wishRank:
        return l10n.orderKeyWishRank;
      case ItemOrderKey.createdAt:
        return l10n.orderKeyCreatedAt;
    }
  }

  /// アイコン
  IconData iconData(SortOrder type) {
    final asc = type == SortOrder.asc;
    switch (this) {
      case ItemOrderKey.name:
        return asc
            ? MdiIcons.sortAlphabeticalAscending
            : MdiIcons.sortAlphabeticalDescending;
      case ItemOrderKey.wishRank:
        return asc ? MdiIcons.sortAscending : MdiIcons.sortDescending;
      case ItemOrderKey.createdAt:
        return asc
            ? MdiIcons.sortCalendarAscending
            : MdiIcons.sortCalendarDescending;
    }
  }
}
