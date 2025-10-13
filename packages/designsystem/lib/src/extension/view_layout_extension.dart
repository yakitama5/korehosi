import 'package:flutter/material.dart';
import 'package:packages_domain/designsystem.dart';

extension ViewLayoutX on ViewLayout {
  IconData get iconData => switch (this) {
    ViewLayout.grid => Icons.grid_3x3_rounded,
    ViewLayout.list => Icons.list_rounded,
  };
}
