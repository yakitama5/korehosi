import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:packages_domain/item.dart';

typedef ItemDetailBuilder = Widget Function(BuildContext context, Item item);

/// 横スワイプで検索結果内の前後の欲しいものを表示する。
class ItemDetailPager extends HookWidget {
  const ItemDetailPager({
    super.key,
    required this.items,
    required this.initialItemId,
    required this.itemBuilder,
  });

  final List<Item> items;
  final ItemId initialItemId;
  final ItemDetailBuilder itemBuilder;

  @override
  Widget build(BuildContext context) {
    final itemIndex = items.indexWhere((item) => item.id == initialItemId);
    final initialPage = itemIndex < 0 ? 0 : itemIndex;
    final controller = usePageController(initialPage: initialPage);

    return PageView.builder(
      controller: controller,
      itemCount: items.length,
      itemBuilder: (context, index) => itemBuilder(context, items[index]),
    );
  }
}
