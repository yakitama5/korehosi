import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../../components/importer.dart';

class PhotoViewer extends HookWidget {
  PhotoViewer({
    super.key,
    this.loadingBuilder,
    this.backgroundDecoration,
    this.minScale,
    this.maxScale,
    this.initialIndex = 0,
    required this.imagesPath,
    this.scrollDirection = Axis.horizontal,
  }) : pageController = PageController(initialPage: initialIndex);

  final LoadingBuilder? loadingBuilder;
  final BoxDecoration? backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;
  final int initialIndex;
  final PageController pageController;
  final List<String> imagesPath;
  final Axis scrollDirection;

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(initialIndex);

    return Scaffold(
      body: Container(
        decoration: backgroundDecoration,
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            PhotoViewGallery.builder(
              scrollPhysics: const BouncingScrollPhysics(),
              builder: _buildItem,
              itemCount: imagesPath.length,
              loadingBuilder: loadingBuilder,
              backgroundDecoration: backgroundDecoration,
              pageController: pageController,
              onPageChanged: (i) => currentIndex.value = i,
              scrollDirection: scrollDirection,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.paddingOf(context).top,
                right: MediaQuery.paddingOf(context).right,
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 32,
                  ),
                  onPressed: () => context.pop(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PhotoViewGalleryPageOptions _buildItem(BuildContext context, int index) {
    final imagePath = imagesPath[index];
    return PhotoViewGalleryPageOptions.customChild(
      child: StorageImage(imagePath: imagePath),
      initialScale: PhotoViewComputedScale.contained,
      minScale: PhotoViewComputedScale.contained * (0.5 + index / 10),
      maxScale: PhotoViewComputedScale.covered * 4.1,
      heroAttributes: PhotoViewHeroAttributes(tag: imagePath),
    );
  }
}
