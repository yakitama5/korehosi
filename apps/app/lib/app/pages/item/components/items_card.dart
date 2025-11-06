import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/item/components/items_empty_image.dart';
import 'package:flutter_app/app/pages/item/components/rating_icon.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:gap/gap.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/item.dart';
import 'package:reactive_flutter_rating_bar/reactive_flutter_rating_bar.dart';

class ItemsCard extends StatelessWidget {
  const ItemsCard({super.key, required this.item, this.onTap});

  final Item item;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;

    // 画像は先頭1件を利用する
    final image = item.images?.first;

    return OutlinedCard(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: (image == null)
                  ? const ItemsEmptyImage(
                      width: double.infinity,
                      height: double.infinity,
                    )
                  : NetworkImageWithPlaceholder(
                      imageUrl: image.url,
                      fit: BoxFit.cover,
                    ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 8,
                end: 8,
                top: 8,
                bottom: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: tt.titleMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Gap(4),
                  RatingBar.builder(
                    itemBuilder: (context, index) => const RatingIcon(),
                    initialRating: item.wishRank,
                    itemSize: 24,
                    // 編集不可
                    ignoreGestures: true,
                    onRatingUpdate: (value) {},
                  ),
                  Text(
                    i18n.item.common.currencyFormat(
                      price: item.purchase?.price ?? 0,
                    ),
                    style: tt.bodyMedium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
