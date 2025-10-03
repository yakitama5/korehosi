import 'package:flutter/material.dart';
import 'package:packages_designsystem/i18n/strings.g.dart';
import 'package:packages_domain/common.dart';

extension SortOrderX on SortOrder {
  String get title => i18n.designsystem.sortOrder(context: this);
  IconData get iconData => switch (this) {
    SortOrder.asc => Icons.arrow_downward_rounded,
    SortOrder.desc => Icons.arrow_upward_rounded,
  };
}
