import 'package:flutter_test/flutter_test.dart';
import 'package:infrastructure_firebase/src/item/model/firestore_item_model.dart';
import 'package:packages_domain/item.dart';

void main() {
  test('serializes fetched and dismissed URL thumbnails', () {
    const model = FirestoreItemModel(
      id: 'item',
      name: 'item',
      wishRank: 3,
      urlThumbnails: {
        'https://example.com': 'https://example.com/thumbnail.png',
        'https://ignored.example.com': null,
      },
      purchaseStatus: PurchaseStatus.notPurchased,
      childViewPurchaseStatus: PurchaseStatus.notPurchased,
    );

    expect(model.toJson()['urlThumbnails'], model.urlThumbnails);
  });
}
