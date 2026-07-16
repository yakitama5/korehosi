import 'package:flutter_app/app/pages/item/services/url_thumbnail_fetcher.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:metadata_fetch/metadata_fetch.dart';

void main() {
  test('returns the image URL extracted from page metadata', () async {
    final metadata = Metadata()..image = ' https://example.com/image.png ';

    final result = await fetchUrlThumbnail(
      'https://example.com/item',
      extract: (_) async => metadata,
    );

    expect(result, 'https://example.com/image.png');
  });

  test('returns null when extraction fails', () async {
    final result = await fetchUrlThumbnail(
      'https://example.com/item',
      extract: (_) async => throw Exception('network error'),
    );

    expect(result, isNull);
  });
}
