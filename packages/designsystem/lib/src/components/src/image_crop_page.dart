import 'dart:typed_data';

import 'package:crop_your_image/crop_your_image.dart';
import 'package:flutter/material.dart';
import 'package:packages_designsystem/i18n.dart';

class ImageCropPage extends StatefulWidget {
  const ImageCropPage({super.key, required this.image});

  final Uint8List image;

  static Future<Uint8List?> show({
    required BuildContext context,
    required Uint8List image,
  }) => Navigator.of(context).push<Uint8List>(
    MaterialPageRoute(builder: (_) => ImageCropPage(image: image)),
  );

  @override
  State<ImageCropPage> createState() => _ImageCropPageState();
}

class _ImageCropPageState extends State<ImageCropPage> {
  final _controller = CropController();
  var _isCropping = false;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(commonI18n.common.edit),
      actions: [
        TextButton(
          onPressed: _isCropping ? null : _crop,
          child: Text(commonI18n.common.save),
        ),
      ],
    ),
    body: SafeArea(
      child: Stack(
        children: [
          Positioned.fill(
            child: Crop(
              image: widget.image,
              controller: _controller,
              interactive: true,
              onCropped: _onCropped,
            ),
          ),
          if (_isCropping)
            const Positioned.fill(
              child: ColoredBox(
                color: Color(0x66000000),
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
        ],
      ),
    ),
  );

  void _crop() {
    setState(() => _isCropping = true);
    _controller.crop();
  }

  void _onCropped(CropResult result) {
    if (!mounted) {
      return;
    }

    switch (result) {
      case CropSuccess(:final croppedImage):
        Navigator.of(context).pop(croppedImage);
      case CropFailure(:final cause):
        setState(() => _isCropping = false);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(cause.toString())),
        );
    }
  }
}
