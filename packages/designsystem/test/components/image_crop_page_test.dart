import 'dart:convert';
import 'dart:typed_data';

import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:packages_designsystem/src/components/src/image_crop_page.dart';

void main() {
  testWidgets('shows an interactive crop editor and save action', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(home: ImageCropPage(image: _onePixelPng)),
    );
    await tester.pump();

    expect(find.byType(Crop), findsOneWidget);
    expect(find.text('保存'), findsOneWidget);

    final crop = tester.widget<Crop>(find.byType(Crop));
    expect(crop.interactive, isTrue);
  });
}

final _onePixelPng = Uint8List.fromList(
  base64Decode(
    'iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwC'
    'AAAAC0lEQVR42mNk+A8AAQUBAScY42YAAAAASUVORK5CYII=',
  ),
);
