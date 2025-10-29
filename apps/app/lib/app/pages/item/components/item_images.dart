import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/item/components/item_image_carousel_slider.dart';
import 'package:flutter_app/app/pages/item/components/items_empty_image.dart';
import 'package:flutter_app/app/routes/src/routes_data.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/item.dart';

/// 欲しい物の画像一覧
class ItemImages extends StatelessWidget {
  const ItemImages({super.key, required this.images, this.autoPlay = false});

  final List<ItemImage>? images;
  final bool autoPlay;

  @override
  Widget build(BuildContext context) {
    final isEmpty = images == null || images!.isEmpty;

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
          : images!
                .mapIndexed(
                  (index, image) => GestureDetector(
                    child: NetworkImageWithPlaceholder(imageUrl: image.url),
                    onTap: () {
                      // 画像押下で全画面表示
                      PhotoPreviewRouteData(
                        $extra: images!.map((e) => e.url).toList(),
                        index: index,
                      ).push<void>(context);
                    },
                  ),
                )
                .toList(),
    );
  }
}
