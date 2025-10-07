import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:nested/nested.dart';

class DevicePreviewSingleChildContainer extends SingleChildStatelessWidget {
  const DevicePreviewSingleChildContainer({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return DevicePreview.appBuilder(context, child);
  }
}
