import 'package:flutter/material.dart';
import 'package:flutter_app/app/pages/item/components/items_list_tile.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:packages_designsystem/i18n.dart';
import 'package:packages_domain/item.dart';

void main() {
  testWidgets('deletes an item from the slide action after confirmation', (
    tester,
  ) async {
    var deleted = false;
    final item = Item(
      id: ItemId('item'),
      name: 'slide target',
      wishRank: 1,
      purchaseStatus: PurchaseStatus.notPurchased,
      createdAt: DateTime(2026),
      updatedAt: DateTime(2026),
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ItemsListTile(
            item: item,
            onDelete: () async => deleted = true,
          ),
        ),
      ),
    );

    await tester.drag(find.text(item.name), const Offset(-400, 0));
    await tester.pumpAndSettle();
    await tester.tap(find.text(commonI18n.common.delete));
    await tester.pumpAndSettle();

    expect(find.text(commonI18n.common.deleteConfirmDialog.title), findsOne);

    await tester.tap(find.text('OK'));
    await tester.pumpAndSettle();

    expect(deleted, isTrue);
  });
}
