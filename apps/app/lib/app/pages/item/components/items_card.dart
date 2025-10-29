import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/item/components/item_images.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:gap/gap.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/item.dart';

class ItemsCard extends StatelessWidget {
  const ItemsCard({super.key, required this.item, this.onTap});

  final Item item;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;

    return OutlinedCard(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: ItemImages(images: item.images, autoPlay: true),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 16,
                end: 16,
                top: 16,
                bottom: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name, style: tt.titleLarge),
                  const Gap(4),
                  Text(
                    i18n.item.common.currencyFormat(
                      price: item.purchase?.price ?? 0,
                    ),
                    style: tt.titleMedium,
                  ),
                  const Gap(8),
                  Text(item.name, overflow: TextOverflow.ellipsis, maxLines: 3),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
