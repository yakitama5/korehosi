import 'package:flutter_app/i18n/strings.g.dart';

/// 並び順 (昇順 or 降順)
enum SortOrder {
  asc,
  desc;

  /// 表示名
  String get description => switch (this) {
    SortOrder.asc => i18n.app.sortOrderAsc,
    SortOrder.desc => i18n.app.sortOrderDesc,
  };
}
