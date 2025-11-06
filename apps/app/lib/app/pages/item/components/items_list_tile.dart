import 'package:flutter/material.dart';
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
    // 画像は先頭1件を利用する
    final image = item.images?.first;

    return ListTile(
      onTap: onTap,
      title: Text(item.name),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: (image == null)
            ? const ItemsEmptyImage(width: 96, height: double.infinity)
            : NetworkImageWithPlaceholder(
                imageUrl: image.url,
                width: 96,
                fit: BoxFit.cover,
              ),
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
    return const ShimmerWidget.rectangular(height: double.infinity, width: 96);
  }
}
