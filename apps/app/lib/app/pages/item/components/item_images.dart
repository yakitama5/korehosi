import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/item/components/empty_item_image.dart';
import 'package:flutter_app/app/pages/item/components/item_image_carousel_slider.dart';
import 'package:flutter_app/app/routes/src/routes_data.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:packages_designsystem/widgets.dart';

/// 欲しい物の画像一覧
class ItemImages extends StatelessWidget {
  const ItemImages({super.key, required this.imagesPath});

  final List<String>? imagesPath;

  @override
  Widget build(BuildContext context) {
    final isEmpty = imagesPath == null || imagesPath!.isEmpty;

    return ItemImageCarouselSlider(
      // 画像がなければダミー要素を表示
      items: isEmpty
          ? [
              EmptyItemImage(
                iconData: MdiIcons.imageArea,
                radius: BorderRadius.circular(16),
              ),
            ]
          : imagesPath!
                .mapIndexed(
                  (index, path) => GestureDetector(
                    child: StorageImage(imagePath: path),
                    onTap: () {
                      // 画像押下で全画面表示
                      PhotoPreviewRouteData(
                        $extra: imagesPath,
                        index: index,
                      ).push<void>(context);
                    },
                  ),
                )
                .toList(),
    );
  }
}
