import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

class ImageAspectRatio extends SingleChildStatelessWidget {
  const ImageAspectRatio({super.key, required super.child});

  static const double aspectRatio = 16 / 9;

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return AspectRatio(aspectRatio: aspectRatio, child: child);
  }
}
