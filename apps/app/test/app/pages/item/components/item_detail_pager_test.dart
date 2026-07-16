import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/item/components/item_detail_pager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:packages_domain/item.dart';

void main() {
  testWidgets('moves to adjacent item with a horizontal swipe', (tester) async {
    final items = [_item('first'), _item('second'), _item('third')];

    await tester.pumpWidget(
      MaterialApp(
        home: ItemDetailPager(
          items: items,
          initialItemId: items[1].id,
          itemBuilder: (_, item) => Scaffold(body: Text(item.name)),
        ),
      ),
    );

    expect(find.text('second'), findsOneWidget);

    await tester.drag(find.byType(PageView), const Offset(-400, 0));
    await tester.pumpAndSettle();

    expect(find.text('third'), findsOneWidget);
  });
}

Item _item(String id) => Item(
  id: ItemId(id),
  name: id,
  wishRank: 1,
  purchaseStatus: PurchaseStatus.notPurchased,
  createdAt: DateTime(2026),
  updatedAt: DateTime(2026),
);
