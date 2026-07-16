import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/item/components/items_empty_image.dart';
import 'package:flutter_app/i18n/strings.g.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_designsystem/widgets.dart';
import 'package:packages_domain/item.dart';

class ItemsListTile extends StatelessWidget with PresentationMixin {
  const ItemsListTile({
    super.key,
    required this.item,
    this.onTap,
    this.onDelete,
  });

  final Item item;
  final VoidCallback? onTap;
  final Future<void> Function()? onDelete;

  @override
  Widget build(BuildContext context) {
    // 画像は先頭1件を利用する
    final imageUrl = item.primaryImageUrl;

    final colorScheme = Theme.of(context).colorScheme;

    return Slidable(
      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        extentRatio: 0.25,
        children: [
          SlidableAction(
            onPressed: (_) => _confirmAndDelete(context),
            backgroundColor: colorScheme.error,
            foregroundColor: colorScheme.onError,
            icon: Icons.delete,
            label: commonI18n.common.delete,
          ),
        ],
      ),
      child: ListTile(
        onTap: onTap,
        title: Text(item.name),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: (imageUrl == null)
              ? const ItemsEmptyImage(width: 96, height: double.infinity)
              : NetworkImageWithPlaceholder(
                  imageUrl: imageUrl,
                  width: 96,
                  fit: BoxFit.cover,
                ),
        ),
        subtitle: Text(
          i18n.item.common.currencyFormat(price: item.purchase?.price ?? 0),
        ),
      ),
    );
  }

  Future<void> _confirmAndDelete(BuildContext context) async {
    final delete = onDelete;
    if (delete == null) {
      return;
    }

    final messages = commonI18n.common.deleteConfirmDialog;
    final result = await showOkCancelAlertDialog(
      context: context,
      title: messages.title,
      message: messages.message(name: item.name),
    );
    if (result != OkCancelResult.ok || !context.mounted) {
      return;
    }

    await execute(
      action: delete,
      successMessage: commonI18n.common.deletionComplete,
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
