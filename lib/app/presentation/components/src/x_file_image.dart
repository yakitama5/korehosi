import 'dart:io' as io;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class XFileImage extends HookConsumerWidget {
  const XFileImage({super.key, required this.xFile});

  final XFile xFile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (kIsWeb) {
      // Web
      return Image.network(xFile.path);
    } else {
      // Desktop, Mobile
      final file = io.File(xFile.path);
      return Image.file(file);
    }
  }
}
