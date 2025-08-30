import 'package:family_wish_list/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../order.dart';

/// 欲しい物一覧の並び替え種類
enum ItemOrderKey {
  name,
  wishRank,
  createdAt;

  /// 言語別の表示名
  String get localeName => switch (this) {
        ItemOrderKey.name => i18n.app.orderKeyName,
        ItemOrderKey.wishRank => i18n.app.orderKeyWishRank,
        ItemOrderKey.createdAt => i18n.app.orderKeyCreatedAt,
      };

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
