import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/item/components/item_image_carousel_slider.dart';
import 'package:flutter_app/app/pages/item/components/items_empty_image.dart';
import 'package:flutter_app/app/routes/src/routes_data.dart';
import 'package:packages_designsystem/widgets.dart';

/// 欲しい物の画像一覧
class ItemImages extends StatelessWidget {
  const ItemImages({
    super.key,
    required this.imageUrls,
    this.autoPlay = false,
  });

  final List<String> imageUrls;
  final bool autoPlay;

  @override
  Widget build(BuildContext context) {
    final isEmpty = imageUrls.isEmpty;

    return ItemImageCarouselSlider(
      autoPlay: autoPlay,
      // 画像がなければダミー要素を表示
      items: isEmpty
          ? [
              const ItemsEmptyImage(
                height: double.infinity,
                width: double.infinity,
              ),
            ]
          : imageUrls
                .asMap()
                .entries
                .map(
                  (entry) => GestureDetector(
                    child: NetworkImageWithPlaceholder(imageUrl: entry.value),
                    onTap: () {
                      // 画像押下で全画面表示
                      PhotoPreviewRouteData(
                        $extra: imageUrls,
                        index: entry.key,
                      ).push<void>(context);
                    },
                  ),
                )
                .toList(),
    );
  }
}
