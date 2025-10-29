import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/item/components/item_images.dart';
import 'package:flutter_app/app/pages/item/components/items_empty_image.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/item.dart';

class ItemsListTile extends StatelessWidget {
  const ItemsListTile({super.key, required this.item, this.onTap});

  final Item item;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(item.name),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: (item.images?.isEmpty ?? true)
            ? const ItemsEmptyImage(width: 64, height: 64)
            : ItemImages(images: item.images, autoPlay: true),
      ),
      subtitle: Text(
        i18n.item.common.currencyFormat(price: item.purchase?.price ?? 0),
      ),
    );
  }
}

class ItemsShimmerListTileLeading extends StatelessWidget {
  const ItemsShimmerListTileLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShimmerWidget.rectangular(height: 64, width: 64);
  }
}
