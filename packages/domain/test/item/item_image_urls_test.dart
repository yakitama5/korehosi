import 'package:packages_domain/common.dart';
import 'package:packages_domain/item.dart';
import 'package:test/test.dart';

void main() {
  test('uploaded images take priority over URL thumbnails', () {
    final item = Item(
      id: ItemId('item'),
      images: [
        ItemImage(id: ImageId('image'), url: 'https://example.com/upload.png'),
      ],
      name: 'item',
      wishRank: 3,
      urlThumbnails: const {
        'https://example.com': 'https://example.com/thumbnail.png',
        'https://ignored.example.com': null,
      },
      purchaseStatus: PurchaseStatus.notPurchased,
      createdAt: DateTime(2026),
      updatedAt: DateTime(2026),
    );

    expect(item.imageUrls, [
      'https://example.com/upload.png',
      'https://example.com/thumbnail.png',
    ]);
    expect(item.primaryImageUrl, 'https://example.com/upload.png');
  });
}
